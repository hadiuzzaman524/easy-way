import 'package:auto_route/annotations.dart';
import 'package:easy_way/presentation/car_connect/cubit/car_connect_cubit.dart';
import 'package:easy_way/presentation/car_connect/widgets/clear_button.dart';
import 'package:easy_way/presentation/car_connect/widgets/current_location_button.dart';
import 'package:easy_way/presentation/car_connect/widgets/distance_card.dart';
import 'package:easy_way/presentation/car_connect/widgets/floating_app_bar.dart';
import 'package:easy_way/presentation/car_connect/widgets/google_map_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CarConnectScreen extends StatelessWidget {
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
