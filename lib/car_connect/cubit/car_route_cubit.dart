import 'package:dio/dio.dart';
import 'package:easy_way/car_connect/cubit/car_route_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CarRouteCubit extends Cubit<CarRouteState> {
  CarRouteCubit() : super(const CarRouteState()) {
    fetchCurrentLocation();
  }

  final Dio _dio = Dio();
  GoogleMapController? _mapController;

  final String apiKey =
      'AIzaSyB0b4TGm-toABe37pTnvaNis10BN4Ka4Jk'; // replace with your real key
  void selectPoint(LatLng position) async {
    if (state.origin != null && state.destination != null) {
      // Route complete; ignore taps until clear
      return;
    }

    if (state.origin == null) {
      // Set origin and remove current location marker
      final updatedMarkers = Set<Marker>.from(state.markers)
        ..removeWhere((m) => m.markerId.value == 'current_location');
      updatedMarkers.add(
        Marker(markerId: const MarkerId('origin'), position: position),
      );

      emit(
        state.copyWith(
          origin: position,
          destination: null,
          markers: updatedMarkers,
          distance: null,
          duration: null,
          polylines: {},
          isLoading: false,
          showCurrentLocationMarker: false,
        ),
      );
    } else {
      // Set destination and fetch route
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

    try {
      final response = await _dio.get(
        'https://maps.googleapis.com/maps/api/directions/json',
        queryParameters: {
          'origin': '${state.origin!.latitude},${state.origin!.longitude}',
          'destination':
              '${state.destination!.latitude},${state.destination!.longitude}',
          'mode': 'driving',
          'key': apiKey,
        },
      );

      if (response.data['status'] == 'OK') {
        final route = response.data['routes'][0];
        final polyline = route['overview_polyline']['points'].toString();
        final decoded = _decodePolyline(polyline);
        final leg = route['legs'][0];

        emit(
          state.copyWith(
            polylines: {
              Polyline(
                polylineId: const PolylineId('route'),
                color: Colors.blue,
                width: 5,
                points: decoded,
              ),
            },
            distance: leg['distance']['text'].toString(),
            duration: leg['duration']['text'].toString(),
            isLoading: false,
          ),
        );
      } else {
        emit(state.copyWith(isLoading: false));
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false));
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

  void clearRoute() {
    emit(const CarRouteState());
  }

  Future<void> fetchCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Check if location services are enabled
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      debugPrint("Location services are disabled.");
      return;
    }

    // Check for permissions
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        debugPrint("Location permissions are denied.");
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      debugPrint("Location permissions are permanently denied.");
      return;
    }

    // If here, permission granted
    final position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
    final currentLatLng = LatLng(position.latitude, position.longitude);

    if (state.origin == null) {
      final updatedMarkers = Set<Marker>.from(state.markers)
        ..removeWhere((m) => m.markerId.value == 'current_location');
      updatedMarkers.add(
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

  void setMapController(GoogleMapController controller) {
    _mapController = controller;
  }
}
