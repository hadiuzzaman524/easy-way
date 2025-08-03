import 'package:easy_way/core/app_colors.dart';
import 'package:easy_way/l10n/l10n.dart';
import 'package:easy_way/presentation/car_connect/cubit/car_connect_cubit.dart';
import 'package:easy_way/presentation/car_connect/cubit/car_connect_state.dart';
import 'package:easy_way/presentation/cubits/user_preferences/user_preferences_cubit.dart';
import 'package:easy_way/presentation/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A bottom card widget that displays the route distance and duration.
///
/// It automatically localizes the values into Bangla if the user preference
/// is set to Bangla, otherwise it displays them in English. The widget listens
/// to [CarConnectCubit] for updated route data and rebuilds when the state changes.
class DistanceCard extends StatelessWidget {
  /// Creates a [DistanceCard].
  DistanceCard({super.key});

  /// A map used to convert English numerals to Bangla numerals.
  final banglaNumbers = {
    '0': '০',
    '1': '১',
    '2': '২',
    '3': '৩',
    '4': '৪',
    '5': '৫',
    '6': '৬',
    '7': '৭',
    '8': '৮',
    '9': '৯',
  };

  /// Converts English digits in a string to their Bangla counterparts.
  ///
  /// Example: `'123'` becomes `'১২৩'`.
  String toBanglaNumber(String input) {
    return input.split('').map((c) => banglaNumbers[c] ?? c).join();
  }

  /// Converts a distance string (e.g., `'2.4 km'`) into Bangla format.
  ///
  /// Returns a formatted string such as `'২.৪ কি.মি.'` or `'১৫০ মিটার'`.
  String toBanglaDistance(String distance) {
    final lower = distance.toLowerCase();
    if (lower.contains('km')) {
      final number = lower.replaceAll('km', '').trim();
      return '${toBanglaNumber(number)} কি.মি.';
    } else if (lower.contains('m')) {
      final number = lower.replaceAll('m', '').trim();
      return '${toBanglaNumber(number)} মিটার';
    }
    return toBanglaNumber(distance);
  }

  /// Converts a duration string (e.g., `'1 hour 30 min'`) into Bangla format.
  ///
  /// Returns a string like `'১ ঘণ্টা ৩০ মিনিট'`.
  String toBanglaDuration(String duration) {
    final lower = duration.toLowerCase();

    final hourRegex = RegExp(r'(\d+)\s*hour');
    final minRegex = RegExp(r'(\d+)\s*min');

    final hourMatch = hourRegex.firstMatch(lower);
    final minMatch = minRegex.firstMatch(lower);

    String result = '';

    if (hourMatch != null) {
      result += '${toBanglaNumber(hourMatch.group(1)!)} ঘণ্টা ';
    }
    if (minMatch != null) {
      result += '${toBanglaNumber(minMatch.group(1)!)} মিনিট';
    }
    return result.trim();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final isBangla = context.select(
          (UserPreferencesCubit cubit) => cubit.state.isBangla,
    );

    return BlocBuilder<CarConnectCubit, CarConnectState>(
      builder: (context, state) {
        if (state.distance != null && state.duration != null) {
          final distance = isBangla
              ? toBanglaDistance(state.distance ?? '')
              : state.distance;
          final duration = isBangla
              ? toBanglaDuration(state.duration ?? '')
              : state.duration;

          return BottomAppBar(
            color: context.colors.backGroundColor,
            elevation: 12,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: FittedBox(
                child: AppText.largeBold(
                  '${l10n.distance}: $distance | ${l10n.duration}: $duration',
                ),
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
