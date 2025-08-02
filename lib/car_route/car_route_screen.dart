import 'dart:async';
import 'package:easy_way/car_route/cubit/car_route_cubit.dart';
import 'package:easy_way/car_route/cubit/car_route_state.dart';
import 'package:easy_way/car_route/location_search_delegate.dart';
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

    return Scaffold(
      // The BottomAppBar is now used
      bottomNavigationBar: BlocBuilder<CarRouteCubit, CarRouteState>(
        builder: (context, state) {
          if (state.distance != null && state.duration != null) {
            return BottomAppBar(
              color: Colors.blueGrey.shade900,
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Distance: ${state.distance}   |   Duration: ${state.duration}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
      body: BlocBuilder<CarRouteCubit, CarRouteState>(
        builder: (context, state) {
          final cubit = context.read<CarRouteCubit>();

          return Stack(
            children: [
              /// Google Map
              GoogleMap(
                initialCameraPosition: _initialCameraPosition,
                onMapCreated: (controller) async {
                  mapController.complete(controller);
                  cubit.setMapController(controller);
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
                polylines: state.polylines,
                onTap: cubit.selectPoint,
                myLocationEnabled: true,
                myLocationButtonEnabled: false,
                zoomControlsEnabled: false,
                mapType: MapType.normal,
              ),

              /// Floating Top AppBar with search + theme + language
              Positioned(
                top: 40,
                left: 16,
                right: 16,
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  color: Theme.of(context).cardColor.withOpacity(0.95),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    child: Row(
                      children: [
                        /// Search Field
                        /// In CarRouteScreen (inside the top card):
                        GestureDetector(
                          onTap: () async {},

                          child: Container(
                            height: 50,
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            alignment: Alignment.centerLeft,
                            child: const Row(
                              children: [
                                Icon(Icons.search),
                                SizedBox(width: 8),
                                Text(
                                  "Search destination...",
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                        ),

                        /// Theme Toggle
                        IconButton(
                          icon: Icon(
                            Theme.of(context).brightness == Brightness.dark
                                ? Icons.light_mode
                                : Icons.dark_mode,
                          ),
                          onPressed: () {
                            // TODO: Implement theme toggle logic
                          },
                        ),

                        /// Language Dropdown
                        DropdownButton<String>(
                          underline: const SizedBox(),
                          icon: const Icon(Icons.language),
                          value: 'en',
                          items: const [
                            DropdownMenuItem(value: 'en', child: Text("EN")),
                            DropdownMenuItem(value: 'bn', child: Text("BN")),
                          ],
                          onChanged: (value) {
                            // TODO: Implement language change logic
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              /// Loader
              if (state.isLoading)
                const Center(child: CircularProgressIndicator()),

              /// My Location Button
              Positioned(
                bottom: 120,
                right: 20,
                child: FloatingActionButton(
                  heroTag: 'locate',
                  backgroundColor: Colors.white,
                  onPressed: () =>
                      context.read<CarRouteCubit>().moveToCurrentLocation(),
                  child: const Icon(Icons.my_location, color: Colors.blue),
                ),
              ),

              /// Clear Route Button
              Positioned(
                bottom: 50,
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
    );
  }
}
