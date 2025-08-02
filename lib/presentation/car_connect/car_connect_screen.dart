import 'dart:async';
import 'package:auto_route/annotations.dart';
import 'package:easy_way/core/app_colors.dart';
import 'package:easy_way/presentation/car_connect/cubit/car_connect_cubit.dart';
import 'package:easy_way/presentation/car_connect/cubit/car_connect_state.dart';
import 'package:easy_way/presentation/cubits/app_theme/app_theme_cubit.dart';
import 'package:easy_way/presentation/widgets/app_text.dart';
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
      bottomNavigationBar: BlocBuilder<CarConnectCubit, CarConnectState>(
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
                    color: Colors.blue,
                    width: 5,
                    points: state.polylines,
                  ),
                },
                onTap: cubit.selectPoint,
                myLocationEnabled: true,
                myLocationButtonEnabled: false,
                zoomControlsEnabled: false,
              ),

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
                                  'Search destination...',
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
                            context.read<AppThemeCubit>().changeThemeMode();
                          },
                        ),

                        /// Language Dropdown
                        DropdownButton<String>(
                          underline: const SizedBox(),
                          icon: const Icon(Icons.language),
                          value: 'en',
                          items: const [
                            DropdownMenuItem(value: 'en', child: Text('EN')),
                            DropdownMenuItem(value: 'bn', child: Text('BN')),
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
                  backgroundColor: context.colors.backGroundColor,
                  onPressed: () =>
                      context.read<CarConnectCubit>().moveToCurrentLocation(),
                  child: Icon(
                    Icons.my_location,
                    color: context.colors.primaryColor,
                  ),
                ),
              ),

              /// Clear Route Button
              Positioned(
                bottom: 50,
                right: 20,
                child: FloatingActionButton.extended(
                  onPressed: () => context.read<CarConnectCubit>().clearRoute(),
                  icon: Icon(
                    Icons.clear,
                    color: context.colors.iconColor,
                  ),
                  label: AppText.normal('Clear'),
                  backgroundColor: context.colors.backGroundColor,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
