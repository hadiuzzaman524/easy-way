import 'package:auto_route/annotations.dart';
import 'package:easy_way/presentation/car_connect/cubit/car_connect_cubit.dart';
import 'package:easy_way/presentation/car_connect/widgets/clear_button.dart';
import 'package:easy_way/presentation/car_connect/widgets/current_location_button.dart';
import 'package:easy_way/presentation/car_connect/widgets/distance_card.dart';
import 'package:easy_way/presentation/car_connect/widgets/floating_app_bar.dart';
import 'package:easy_way/presentation/car_connect/widgets/google_map_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A page that displays the Car Connect screen.
///
/// This screen integrates Google Maps to allow users to view and interact with
/// the map interface, including functionalities like showing current location,
/// clearing map markers, and viewing route distances.
///
/// It listens to the state from [CarConnectCubit] to show a loading indicator
/// during data fetch or route calculation.
///
/// Widgets included:
/// - [GoogleMapView] for map interaction.
/// - [FloatingAppBar] for custom app bar styling.
/// - [CurrentLocationButton] to center map on user's current location.
/// - [ClearButton] to reset map selections.
/// - [DistanceCard] at the bottom to display the route distance.
@RoutePage()
class CarConnectScreen extends StatelessWidget {
  /// Creates an instance of [CarConnectScreen].
  const CarConnectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.select((CarConnectCubit cubit) => cubit.state);

    return Scaffold(
      body: Stack(
        children: [
          const GoogleMapView(),
          const FloatingAppBar(),
          if (state.isLoading) const Center(child: CircularProgressIndicator()),
          const CurrentLocationButton(),
          const ClearButton(),
        ],
      ),
      bottomNavigationBar: DistanceCard(),
    );
  }
}
