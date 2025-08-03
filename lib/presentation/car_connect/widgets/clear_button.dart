import 'package:easy_way/core/app_colors.dart';
import 'package:easy_way/l10n/l10n.dart';
import 'package:easy_way/presentation/car_connect/cubit/car_connect_cubit.dart';
import 'package:easy_way/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A floating action button that clears the current route on the map.
///
/// Positioned at the bottom-right of the screen, this button triggers
/// [CarConnectCubit.clearRoute] when pressed, allowing the user to
/// reset or remove any selected routes from the map view.
class ClearButton extends StatelessWidget {
  /// Creates a [ClearButton].
  const ClearButton({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Positioned(
      bottom: 50,
      right: 20,
      child: FloatingActionButton.extended(
        onPressed: () => context.read<CarConnectCubit>().clearRoute(),
        icon: Icon(
          Icons.clear,
          color: context.colors.buttonColor,
        ),
        label: AppText.largeBold(l10n.clear),
        backgroundColor: context.colors.backGroundColor,
      ),
    );
  }
}
