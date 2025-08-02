import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'car_connect_state.freezed.dart';

@freezed
abstract class CarConnectState with _$CarConnectState {
  const factory CarConnectState({
    LatLng? origin,
    LatLng? destination,
    @Default(<Marker>{}) Set<Marker> markers,
    @Default(<Polyline>{}) Set<Polyline> polylines,
    String? distance,
    String? duration,
    @Default(false) bool isLoading,
    LatLng? currentLocation,
    @Default(true) bool showCurrentLocationMarker,
  }) = _CarConnectState;
}
