import 'package:freezed_annotation/freezed_annotation.dart';

part 'google_direction_response.freezed.dart';

part 'google_direction_response.g.dart';

@freezed
abstract class GoogleDirectionResponse with _$GoogleDirectionResponse {
  const factory GoogleDirectionResponse({
    @JsonKey(name: "geocoded_waypoints")
    List<GeocodedWaypoint>? geocodedWaypoints,
    @JsonKey(name: "routes") List<Route>? routes,
    @JsonKey(name: "status") String? status,
  }) = _GoogleDirectionResponse;

  factory GoogleDirectionResponse.fromJson(Map<String, dynamic> json) =>
      _$GoogleDirectionResponseFromJson(json);
}

@freezed
abstract class GeocodedWaypoint with _$GeocodedWaypoint {
  const factory GeocodedWaypoint({
    @JsonKey(name: "geocoder_status") String? geocoderStatus,
    @JsonKey(name: "place_id") String? placeId,
    @JsonKey(name: "types") List<String>? types,
  }) = _GeocodedWaypoint;

  factory GeocodedWaypoint.fromJson(Map<String, dynamic> json) =>
      _$GeocodedWaypointFromJson(json);
}

@freezed
abstract class Route with _$Route {
  const factory Route({
    @JsonKey(name: "bounds") Bounds? bounds,
    @JsonKey(name: "copyrights") String? copyrights,
    @JsonKey(name: "legs") List<Leg>? legs,
    @JsonKey(name: "overview_polyline") Polyline? overviewPolyline,
    @JsonKey(name: "summary") String? summary,
    @JsonKey(name: "warnings") List<dynamic>? warnings,
    @JsonKey(name: "waypoint_order") List<dynamic>? waypointOrder,
  }) = _Route;

  factory Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);
}

@freezed
abstract class Bounds with _$Bounds {
  const factory Bounds({
    @JsonKey(name: "northeast") Northeast? northeast,
    @JsonKey(name: "southwest") Northeast? southwest,
  }) = _Bounds;

  factory Bounds.fromJson(Map<String, dynamic> json) => _$BoundsFromJson(json);
}

@freezed
abstract class Northeast with _$Northeast {
  const factory Northeast({
    @JsonKey(name: "lat") double? lat,
    @JsonKey(name: "lng") double? lng,
  }) = _Northeast;

  factory Northeast.fromJson(Map<String, dynamic> json) =>
      _$NortheastFromJson(json);
}

@freezed
abstract class Leg with _$Leg {
  const factory Leg({
    @JsonKey(name: "distance") Distance? distance,
    @JsonKey(name: "duration") Distance? duration,
    @JsonKey(name: "end_address") String? endAddress,
    @JsonKey(name: "end_location") Northeast? endLocation,
    @JsonKey(name: "start_address") String? startAddress,
    @JsonKey(name: "start_location") Northeast? startLocation,
    @JsonKey(name: "steps") List<Step>? steps,
    @JsonKey(name: "traffic_speed_entry") List<dynamic>? trafficSpeedEntry,
    @JsonKey(name: "via_waypoint") List<dynamic>? viaWaypoint,
  }) = _Leg;

  factory Leg.fromJson(Map<String, dynamic> json) => _$LegFromJson(json);
}

@freezed
abstract class Distance with _$Distance {
  const factory Distance({
    @JsonKey(name: "text") String? text,
    @JsonKey(name: "value") int? value,
  }) = _Distance;

  factory Distance.fromJson(Map<String, dynamic> json) =>
      _$DistanceFromJson(json);
}

@freezed
abstract class Step with _$Step {
  const factory Step({
    @JsonKey(name: "distance") Distance? distance,
    @JsonKey(name: "duration") Distance? duration,
    @JsonKey(name: "end_location") Northeast? endLocation,
    @JsonKey(name: "html_instructions") String? htmlInstructions,
    @JsonKey(name: "polyline") Polyline? polyline,
    @JsonKey(name: "start_location") Northeast? startLocation,
    @JsonKey(name: "travel_mode") String? travelMode,
    @JsonKey(name: "maneuver") String? maneuver,
  }) = _Step;

  factory Step.fromJson(Map<String, dynamic> json) => _$StepFromJson(json);
}

@freezed
abstract class Polyline with _$Polyline {
  const factory Polyline({
    @JsonKey(name: "points") String? points,
  }) = _Polyline;

  factory Polyline.fromJson(Map<String, dynamic> json) =>
      _$PolylineFromJson(json);
}
