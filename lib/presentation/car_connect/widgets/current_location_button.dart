import 'package:easy_way/core/app_colors.dart';
import 'package:easy_way/presentation/car_connect/cubit/car_connect_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrentLocationButton extends StatelessWidget {
  const CurrentLocationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
    );
  }
}
