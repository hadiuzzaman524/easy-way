import 'package:easy_way/data/data_sources/car_connect_remote_data_source.dart';
import 'package:easy_way/domain/entities/route_info.dart';
import 'package:easy_way/domain/services/car_connect_services.dart';
import 'package:easy_way/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CarConnectServices)
class CarConnectRepository implements CarConnectServices {
  CarConnectRepository(this.remoteDataSource);

  final CarConnectRemoteDataSource remoteDataSource;

  @override
  Future<RouteInfo?> getRoute(LatLng origin, LatLng destination) async {
    try {
      final googleDirectionResponse = await remoteDataSource.getDirections(
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

          // Now use these to build your RouteInfo entity
          return RouteInfo(
            polylines: {
              Polyline(
                polylineId: const PolylineId('route'),
                color: Colors.blue,
                width: 5,
                points: decoded,
              ),
            },
            distance: distanceText,
            duration: durationText,
          );
        }
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  List<LatLng> _decodePolyline(String encoded) {
    List<LatLng> points = [];
    int index = 0, len = encoded.length;
    int lat = 0, lng = 0;

    while (index < len) {
      int b, shift = 0, result = 0;
      do {
        b = encoded.codeUnitAt(index++) - 63;
        result |= (b & 0x1f) << shift;
        shift += 5;
      } while (b >= 0x20);
      int dlat = (result & 1) != 0 ? ~(result >> 1) : (result >> 1);
      lat += dlat;

      shift = 0;
      result = 0;
      do {
        b = encoded.codeUnitAt(index++) - 63;
        result |= (b & 0x1f) << shift;
        shift += 5;
      } while (b >= 0x20);
      int dlng = (result & 1) != 0 ? ~(result >> 1) : (result >> 1);
      lng += dlng;

      points.add(LatLng(lat / 1e5, lng / 1e5));
    }
    return points;
  }
}
