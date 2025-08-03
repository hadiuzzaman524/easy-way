import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'route_info.freezed.dart';

/// Represents detailed information about a route between two points.
///
/// Contains the polyline coordinates for drawing the route,
/// as well as the textual representations of distance and duration.
@freezed
abstract class RouteInfo with _$RouteInfo {
  /// Creates a new instance of [RouteInfo].
  ///
  /// - [polyline]: The list of [LatLng] points representing the route path.
  /// - [distance]: The total distance of the route as a formatted string (e.g., "5 km").
  /// - [duration]: The estimated travel time as a formatted string (e.g., "10 mins").
  const factory RouteInfo({
    required List<LatLng> polyline,
    required String distance,
    required String duration,
  }) = _RouteInfo;
}
