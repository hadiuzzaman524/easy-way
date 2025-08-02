import 'dart:async';
import 'package:auto_route/annotations.dart';
import 'package:easy_way/core/app_colors.dart';
import 'package:easy_way/presentation/car_connect/cubit/car_connect_cubit.dart';
import 'package:easy_way/presentation/car_connect/cubit/car_connect_state.dart';
import 'package:easy_way/presentation/car_connect/widgets/clear_button.dart';
import 'package:easy_way/presentation/car_connect/widgets/current_location_button.dart';
import 'package:easy_way/presentation/car_connect/widgets/distance_card.dart';
import 'package:easy_way/presentation/car_connect/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

@RoutePage()
class CarConnectScreen extends StatelessWidget {
  const CarConnectScreen({super.key});

  static const CameraPosition _initialCameraPosition = CameraPosition(
    target: LatLng(23.8103, 90.4125),
    zoom: 12,
  );

  @override
  Widget build(BuildContext context) {
    final mapController = Completer<GoogleMapController>();

    return Scaffold(
      body: BlocBuilder<CarConnectCubit, CarConnectState>(
        builder: (context, state) {
          final cubit = context.read<CarConnectCubit>();
          return Stack(
            children: [
              GoogleMap(
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
              ),

              const SearchLocation(),

              /// Loader
              if (state.isLoading)
                const Center(child: CircularProgressIndicator()),

              /// My Location Button
              const CurrentLocationButton(),

              /// Clear Route Button
              const ClearButton(),
            ],
          );
        },
      ),
      bottomNavigationBar: const DistanceCard(),
    );
  }
}
