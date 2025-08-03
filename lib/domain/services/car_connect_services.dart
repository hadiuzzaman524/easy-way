import 'package:easy_way/domain/entities/route_info.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

/// Abstract service contract for fetching route information between two points.
///
/// Implementations should provide the logic to obtain route details
/// such as polyline points, distance, and duration for given origin and destination coordinates.
abstract class CarConnectServices {
  /// Fetches route information between [origin] and [destination].
  ///
  /// Returns a [RouteInfo] object containing the route details, or `null` if no route is found.
  ///
  /// Throws exceptions if the route fetching fails due to network or other errors.
  Future<RouteInfo?> getRoute(LatLng origin, LatLng destination);
}
