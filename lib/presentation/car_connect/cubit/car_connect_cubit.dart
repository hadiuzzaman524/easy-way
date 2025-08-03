import 'package:easy_way/domain/usecases/get_route_usecase.dart';
import 'package:easy_way/presentation/car_connect/cubit/car_connect_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

/// A [Cubit] responsible for managing state related to the Car Connect feature.
///
/// Handles:
/// - Origin and destination point selection
/// - Fetching and displaying route information
/// - Managing map markers and polylines
/// - Handling current location fetching and animation
@injectable
class CarConnectCubit extends Cubit<CarConnectState> {
  /// Creates a [CarConnectCubit] with the required [GetRouteUseCase].
  ///
  /// Automatically fetches the user's current location upon initialization.
  CarConnectCubit({required this.getRouteUseCase})
    : super(const CarConnectState()) {
    fetchCurrentLocation();
  }

  /// Use case to fetch route data between two points.
  final GetRouteUseCase getRouteUseCase;

  /// Internal reference to the active [GoogleMapController].
  GoogleMapController? _mapController;

  /// Logger instance for debug output.
  final logger = Logger();

  /// Handles selection of a point on the map.
  ///
  /// - The first selected point becomes the origin.
  /// - The second selected point becomes the destination and triggers route fetching.
  ///
  /// Ignores additional taps once both points are selected.
  Future<void> selectPoint(LatLng position) async {
    if (state.origin != null && state.destination != null) {
      return;
    }

    if (state.origin == null) {
      final updatedMarkers = Set<Marker>.from(state.markers)
        ..removeWhere((m) => m.markerId.value == 'current_location')
        ..add(Marker(markerId: const MarkerId('origin'), position: position));

      emit(
        state.copyWith(
          origin: position,
          destination: null,
          markers: updatedMarkers,
          distance: null,
          duration: null,
          polylines: [],
          isLoading: false,
          showCurrentLocationMarker: false,
        ),
      );
    } else {
      emit(
        state.copyWith(
          destination: position,
          markers: {
            ...state.markers,
            Marker(markerId: const MarkerId('destination'), position: position),
          },
          isLoading: true,
        ),
      );
      await _getRoute();
    }
  }

  /// Fetches route data between origin and destination points using [GetRouteUseCase].
  ///
  /// Updates state with polylines, distance, and duration on success.
  Future<void> _getRoute() async {
    try {
      final routeInfo = await getRouteUseCase.execute(
        state.origin!,
        state.destination!,
      );

      if (routeInfo != null) {
        emit(
          state.copyWith(
            polylines: routeInfo.polyline,
            distance: routeInfo.distance,
            duration: routeInfo.duration,
            isLoading: false,
          ),
        );
      } else {
        emit(state.copyWith(isLoading: false));
      }
    } catch (e) {
      logger.e(e);
    }
  }

  /// Clears all route-related state, resetting to the initial state.
  void clearRoute() {
    emit(const CarConnectState());
  }

  /// Fetches the user's current geolocation and adds a corresponding marker.
  ///
  /// Handles location permission requests and service availability.
  /// If origin is already selected, hides the current location marker.
  Future<void> fetchCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      logger.d('Location services are disabled.');
      await Geolocator.openLocationSettings();
      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        logger.d('User did not enable location services.');
        return;
      }
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        logger.d('Location permissions are denied.');
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      logger.d('Location permissions are permanently denied.');
      return;
    }

    final position = await Geolocator.getCurrentPosition();
    final currentLatLng = LatLng(position.latitude, position.longitude);

    if (state.origin == null) {
      final updatedMarkers = Set<Marker>.from(state.markers)
        ..removeWhere((m) => m.markerId.value == 'current_location')
        ..add(
          Marker(
            markerId: const MarkerId('current_location'),
            position: currentLatLng,
            icon: BitmapDescriptor.defaultMarkerWithHue(
              BitmapDescriptor.hueAzure,
            ),
            infoWindow: const InfoWindow(title: 'Current Location'),
          ),
        );

      emit(
        state.copyWith(
          currentLocation: currentLatLng,
          markers: updatedMarkers,
          showCurrentLocationMarker: true,
        ),
      );
    } else {
      final updatedMarkers = Set<Marker>.from(state.markers)
        ..removeWhere((m) => m.markerId.value == 'current_location');

      emit(
        state.copyWith(
          currentLocation: currentLatLng,
          markers: updatedMarkers,
          showCurrentLocationMarker: false,
        ),
      );
    }
  }

  /// Moves the map camera to the user's current location.
  ///
  /// Fetches location if not already available.
  Future<void> moveToCurrentLocation() async {
    if (state.currentLocation == null) {
      await fetchCurrentLocation();
    }

    if (_mapController != null && state.currentLocation != null) {
      await _mapController!.animateCamera(
        CameraUpdate.newLatLngZoom(state.currentLocation!, 16),
      );
    }
  }

  /// Sets the internal [GoogleMapController] to allow camera control.
  Future<void> setMapController(GoogleMapController controller) async {
    _mapController = controller;
  }
}
