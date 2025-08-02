import 'package:easy_way/domain/usecases/get_route_usecase.dart';
import 'package:easy_way/presentation/car_connect/cubit/car_connect_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

@injectable
class CarConnectCubit extends Cubit<CarConnectState> {
  CarConnectCubit({required this.getRouteUseCase})
    : super(const CarConnectState()) {
    fetchCurrentLocation();
  }

  final GetRouteUseCase getRouteUseCase;

  GoogleMapController? _mapController;

  Future<void> selectPoint(LatLng position) async {
    if (state.origin != null && state.destination != null) {
      return;
    }

    if (state.origin == null) {
      final updatedMarkers = Set<Marker>.from(state.markers)
        ..removeWhere((m) => m.markerId.value == 'current_location')
        ..add(
          Marker(markerId: const MarkerId('origin'), position: position),
        );

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

  Future<void> _getRoute() async {
    if (state.origin == null || state.destination == null) return;

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
  }

  void clearRoute() {
    emit(const CarConnectState());
  }

  Future<void> fetchCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      debugPrint('Location services are disabled.');
      return;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        debugPrint('Location permissions are denied.');
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      debugPrint('Location permissions are permanently denied.');
      return;
    }

    final position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
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

  Future<void> setMapController(GoogleMapController controller) async {
    _mapController = controller;
  }
}
