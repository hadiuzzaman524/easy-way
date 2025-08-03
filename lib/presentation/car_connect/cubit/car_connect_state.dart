import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'car_connect_state.freezed.dart';

/// Represents the state of the Car Connect feature.
///
/// This state includes the origin and destination points, markers on the map,
/// a list of polyline coordinates for the route, distance and duration info,
/// current location, and flags to control loading state and visibility of the current location marker.
@freezed
abstract class CarConnectState with _$CarConnectState {
  /// Creates a new instance of [CarConnectState].
  ///
  /// [origin] and [destination] represent the selected start and end points on the map.
  /// [markers] contains the markers displayed on the map.
  /// [polylines] defines the list of coordinates to render the route polyline.
  /// [distance] and [duration] provide route-related information from the API.
  /// [isLoading] indicates whether a route or location is being fetched.
  /// [currentLocation] holds the device's current GPS location.
  /// [showCurrentLocationMarker] controls whether to display the current location marker.
  const factory CarConnectState({
    /// Starting point of the route.
    LatLng? origin,

    /// Ending point of the route.
    LatLng? destination,

    /// Markers displayed on the Google Map.
    @Default(<Marker>{}) Set<Marker> markers,

    /// Coordinates used to draw the polyline for the selected route.
    @Default([]) List<LatLng> polylines,

    /// Distance between the origin and destination.
    String? distance,

    /// Estimated travel time between the origin and destination.
    String? duration,

    /// Indicates whether the app is currently loading data.
    @Default(false) bool isLoading,

    /// Device's current location.
    LatLng? currentLocation,

    /// Whether to show the current location marker on the map.
    @Default(true) bool showCurrentLocationMarker,
  }) = _CarConnectState;
}
