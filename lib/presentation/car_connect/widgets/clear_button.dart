import 'package:easy_way/core/app_colors.dart';
import 'package:easy_way/presentation/car_connect/cubit/car_connect_cubit.dart';
import 'package:easy_way/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClearButton extends StatelessWidget {
  const ClearButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
    );
  }
}
