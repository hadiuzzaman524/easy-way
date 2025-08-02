import 'package:easy_way/data/data_sources/car_connect_remote_data_source.dart';
import 'package:easy_way/domain/entities/route_info.dart';
import 'package:easy_way/domain/services/car_connect_services.dart';
import 'package:easy_way/core/app_constant.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CarConnectServices)
class CarConnectRepository implements CarConnectServices {
  CarConnectRepository(this._remoteDataSource);

  final CarConnectRemoteDataSource _remoteDataSource;

  @override
  Future<RouteInfo?> getRoute(LatLng origin, LatLng destination) async {
    final googleDirectionResponse = await _remoteDataSource.getDirections(
      origin: '${origin.latitude},${origin.longitude}',
      destination: '${destination.latitude},${destination.longitude}',
      apiKey: AppConstant.apiKEY,
    );
    if (googleDirectionResponse.status == 'OK' &&
        googleDirectionResponse.routes != null &&
        googleDirectionResponse.routes!.isNotEmpty) {
      final route = googleDirectionResponse.routes!.first;

      final polylinePoints = route.overviewPolyline?.points ?? '';
      final decoded = _decodePolyline(polylinePoints);

      final leg = route.legs != null && route.legs!.isNotEmpty
          ? route.legs!.first
          : null;

      if (leg != null) {
        final distanceText = leg.distance?.text ?? '';
        final durationText = leg.duration?.text ?? '';

        return RouteInfo(
          polyline: decoded,
          distance: distanceText,
          duration: durationText,
        );
      }
    }
    return null;
  }

  List<LatLng> _decodePolyline(String encoded) {
    final points = <LatLng>[];
    var index = 0;
    final len = encoded.length;
    var lat = 0;
    var lng = 0;

    while (index < len) {
      int b;
      var shift = 0;
      var result = 0;
      do {
        b = encoded.codeUnitAt(index++) - 63;
        result |= (b & 0x1f) << shift;
        shift += 5;
      } while (b >= 0x20);
      final dlat = (result & 1) != 0 ? ~(result >> 1) : (result >> 1);
      lat += dlat;
      shift = 0;
      result = 0;
      do {
        b = encoded.codeUnitAt(index++) - 63;
        result |= (b & 0x1f) << shift;
        shift += 5;
      } while (b >= 0x20);
      final dlng = (result & 1) != 0 ? ~(result >> 1) : (result >> 1);
      lng += dlng;

      points.add(LatLng(lat / 1e5, lng / 1e5));
    }
    return points;
  }
}
