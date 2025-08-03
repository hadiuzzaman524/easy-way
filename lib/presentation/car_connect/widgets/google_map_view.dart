import 'dart:async';
import 'package:easy_way/core/app_colors.dart';
import 'package:easy_way/presentation/car_connect/cubit/car_connect_cubit.dart';
import 'package:easy_way/presentation/car_connect/cubit/car_connect_state.dart';
import 'package:easy_way/presentation/cubits/user_preferences/user_preferences_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

/// A widget that displays an interactive Google Map for route selection and viewing.
///
/// This widget:
/// - Initializes the map centered on Dhaka, Bangladesh.
/// - Applies a custom map style from user preferences.
/// - Draws user-selected markers and route polylines from [CarConnectCubit] state.
/// - Responds to map taps for selecting points.
/// - Animates the camera to the current location on initialization if available.
/// - Enables showing the user's real-time location.
///
/// This map is intended to be used as the primary interactive view for
/// selecting origin/destination points and viewing the route between them.
class GoogleMapView extends StatelessWidget {
  /// Creates a [GoogleMapView].
  const GoogleMapView({super.key});

  /// The initial camera position (centered on Dhaka, Bangladesh).
  static const CameraPosition _initialCameraPosition = CameraPosition(
    target: LatLng(23.8103, 90.4125),
    zoom: 12,
  );

  @override
  Widget build(BuildContext context) {
    final mapController = Completer<GoogleMapController>();
    final cubit = context.read<CarConnectCubit>();

    // Retrieve custom map styling (e.g., dark/light) based on user preferences
    final mapStyle = context.select(
      (UserPreferencesCubit cubit) => cubit.state.mapStyle,
    );

    return BlocBuilder<CarConnectCubit, CarConnectState>(
      builder: (context, state) {
        return GoogleMap(
          style: mapStyle,
          initialCameraPosition: _initialCameraPosition,
          onMapCreated: (controller) async {
            mapController.complete(controller);
            await cubit.setMapController(controller);

            // Animate to current location if available
            if (cubit.state.currentLocation != null) {
              await controller.animateCamera(
                CameraUpdate.newLatLngZoom(cubit.state.currentLocation!, 15),
              );
            }
          },
          markers: state.markers,
          polylines: {
            Polyline(
              polylineId: const PolylineId('route'),
              color: context.colors.primaryColor,
              width: 5,
              points: state.polylines,
            ),
          },
          onTap: cubit.selectPoint,
          myLocationEnabled: true,
          myLocationButtonEnabled: false,
          zoomControlsEnabled: false,
        );
      },
    );
  }
}
