import 'package:easy_way/gen/assets.gen.dart';
import 'package:easy_way/l10n/l10n.dart';
import 'package:easy_way/presentation/cubits/user_preferences/user_preferences_cubit.dart';
import 'package:easy_way/presentation/widgets/app_text.dart';
import 'package:easy_way/presentation/widgets/language_toggle_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A custom floating app bar displayed at the top of the Car Connect screen.
///
/// This app bar includes:
/// - The app logo
/// - The localized app title
/// - A theme toggle button to switch between light and dark mode
/// - A language toggle button for switching between languages (e.g., English and Bangla)
///
/// Positioned with padding and elevation, this bar overlays content
/// while maintaining a consistent UI/UX on both light and dark themes.
class FloatingAppBar extends StatelessWidget {
  /// Creates a [FloatingAppBar].
  const FloatingAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Positioned(
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // App logo
              Assets.images.easyway.image(
                height: 45,
                width: 45,
              ),

              // Localized app title
              AppText.headline2(l10n.appTitle),

              const Spacer(),

              // Theme toggle icon
              IconButton(
                icon: Icon(
                  Theme.of(context).brightness == Brightness.dark
                      ? Icons.light_mode
                      : Icons.dark_mode,
                ),
                onPressed: () {
                  context.read<UserPreferencesCubit>().changeThemeMode();
                },
              ),

              // Language switcher
              const LanguageToggleButton(),
            ],
          ),
        ),
      ),
    );
  }
}
