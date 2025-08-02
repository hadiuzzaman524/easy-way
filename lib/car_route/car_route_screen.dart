import 'dart:async';
import 'package:easy_way/car_route/cubit/car_route_cubit.dart' show CarRouteCubit;
import 'package:easy_way/car_route/cubit/car_route_state.dart' show CarRouteState;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CarRouteScreen extends StatelessWidget {
  const CarRouteScreen({super.key});

  static const CameraPosition _initialCameraPosition = CameraPosition(
    target: LatLng(23.8103, 90.4125),
    zoom: 12,
  );

  @override
  Widget build(BuildContext context) {
    final Completer<GoogleMapController> mapController = Completer();

    return BlocProvider(
      create: (_) => CarRouteCubit(),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: const Text("Car Route Planner")),
          body: BlocBuilder<CarRouteCubit, CarRouteState>(
            builder: (context, state) {
              final cubit = context.read<CarRouteCubit>();
              return Stack(
                children: [
                  GoogleMap(
                    initialCameraPosition: _initialCameraPosition,
                    // onMapCreated: (controller) async {
                    //   mapController.complete(controller);
                    //   final cubit = context.read<CarRouteCubit>();
                    //   if (cubit.state.currentLocation != null) {
                    //     await controller.animateCamera(CameraUpdate.newLatLngZoom(cubit.state.currentLocation!, 15));
                    //   }
                    // },
                    onMapCreated: (controller) async {
                      mapController.complete(controller);
                      final cubit = context.read<CarRouteCubit>();
                      cubit.setMapController(controller);

                      if (cubit.state.currentLocation != null) {
                        await controller.animateCamera(
                          CameraUpdate.newLatLngZoom(cubit.state.currentLocation!, 15),
                        );
                      }
                    },


                    //  onMapCreated: (controller) => mapController.complete(controller),
                    markers: state.markers,
                    polylines: state.polylines,
                    onTap: cubit.selectPoint,
                    myLocationEnabled: true,
                    myLocationButtonEnabled: false,
                    zoomControlsEnabled: false,
                    mapType: MapType.normal,
                  ),
                  if (state.distance != null && state.duration != null)
                    Positioned(
                      top: 15,
                      left: 15,
                      right: 15,
                      child: Card(
                        color: Colors.white,
                        elevation: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            'Distance: ${state.distance} | Duration: ${state.duration}',
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  if (state.isLoading)
                    const Center(
                      child: CircularProgressIndicator(),
                    ),
                  Positioned(
                    bottom: 90,
                    right: 20,
                    child: FloatingActionButton(
                      heroTag: 'locate',
                      backgroundColor: Colors.white,
                      onPressed: () {
                        context.read<CarRouteCubit>().moveToCurrentLocation();
                      },
                      child: const Icon(Icons.my_location, color: Colors.blue),
                    ),
                  ),

                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: FloatingActionButton.extended(
                      onPressed: () => context.read<CarRouteCubit>().clearRoute(),
                      icon: const Icon(Icons.clear),
                      label: const Text("Clear"),
                      backgroundColor: Colors.redAccent,
                    ),
                  ),

                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
