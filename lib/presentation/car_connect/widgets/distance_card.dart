import 'package:easy_way/core/app_colors.dart';
import 'package:easy_way/presentation/car_connect/cubit/car_connect_cubit.dart';
import 'package:easy_way/presentation/car_connect/cubit/car_connect_state.dart';
import 'package:easy_way/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DistanceCard extends StatelessWidget {
  const DistanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CarConnectCubit, CarConnectState>(
      builder: (context, state) {
        if (state.distance != null && state.duration != null) {
          return BottomAppBar(
            color: context.colors.cardColor,
            elevation: 8,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: AppText.large(
                'Distance: ${state.distance}   |   Duration: ${state.duration}',
              ),
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
