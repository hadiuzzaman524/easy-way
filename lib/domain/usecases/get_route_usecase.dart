import 'package:easy_way/domain/entities/route_info.dart';
import 'package:easy_way/domain/services/car_connect_services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

/// Use case responsible for fetching route information between two geographic points.
///
/// Delegates the actual data retrieval to the injected [CarConnectServices] repository.
@injectable
class GetRouteUseCase {
  /// Creates a [GetRouteUseCase] with the given [CarConnectServices] repository.
  GetRouteUseCase(this.repository);

  final CarConnectServices repository;

  /// Executes the use case to obtain route details between [origin] and [destination].
  ///
  /// Returns a [RouteInfo] object with polyline, distance, and duration data,
  /// or `null` if no route is available.
  Future<RouteInfo?> execute(LatLng origin, LatLng destination) async {
    return repository.getRoute(origin, destination);
  }
}
