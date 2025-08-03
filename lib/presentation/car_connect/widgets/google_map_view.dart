import 'dart:async';
import 'package:easy_way/core/app_colors.dart';
import 'package:easy_way/presentation/car_connect/cubit/car_connect_cubit.dart';
import 'package:easy_way/presentation/car_connect/cubit/car_connect_state.dart';
import 'package:easy_way/presentation/cubits/user_preferences/user_preferences_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapView extends StatelessWidget {
  const GoogleMapView({super.key});

  static const CameraPosition _initialCameraPosition = CameraPosition(
    target: LatLng(23.8103, 90.4125),
    zoom: 12,
  );

  @override
  Widget build(BuildContext context) {
    final mapController = Completer<GoogleMapController>();
    final cubit = context.read<CarConnectCubit>();
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
            if (cubit.state.currentLocation != null) {
              await controller.animateCamera(
                CameraUpdate.newLatLngZoom(
                  cubit.state.currentLocation!,
                  15,
                ),
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
