import 'package:easy_way/presentation/cubits/user_preferences/user_preferences_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_colors.freezed.dart';

/// Represents a collection of colors used throughout the application.
///
/// Contains colors for primary elements, text, buttons, backgrounds, borders,
/// cards, icons, and text variants for light and dark themes.
@freezed
abstract class AppColors with _$AppColors {
  /// Creates an immutable [AppColors] instance.
  const factory AppColors({
    required Color primaryColor,
    required Color textColor,
    required Color buttonColor,
    required Color backGroundColor,
    required Color borderColor,
    required Color cardColor,
    required Color iconColor,
    required Color lightTextColor,
    required Color darkTextColor,
  }) = _AppColors;
}

/// Extension on [BuildContext] to easily access theme-related colors.
///
/// Allows usage of `context.colors` to get the current [AppColors] instance
/// based on the app's theme mode.
///
/// Provides:
/// - [colors]: Current [AppColors] based on dark or light theme.
/// - [isDarkMode]: Boolean indicating if dark theme is enabled.
extension BuildContextExtension on BuildContext {
  /// Returns the current [AppColors] instance based on theme mode.
  AppColors get colors {
    const lightThemeColor = AppColors(
      primaryColor: Colors.deepOrange,
      buttonColor: Colors.lightBlue,
      textColor: Color(0xff212121),
      lightTextColor: Color(0xff757575),
      darkTextColor: Colors.black87,
      backGroundColor: Color(0xffeef1f6),
      borderColor: Color(0xffE3E3E8),
      cardColor: Color(0xffFFFFFF),
      iconColor: Colors.black54,
    );
    const darkThemeColor = AppColors(
      primaryColor: Colors.deepOrange,
      buttonColor: Colors.lightBlue,
      textColor: Colors.white,
      lightTextColor: Colors.white60,
      darkTextColor: Colors.white,
      backGroundColor: Color(0xff121212),
      borderColor: Color(0xff272727),
      cardColor: Color(0xff242424),
      iconColor: Colors.white,
    );
    return isDarkMode ? darkThemeColor : lightThemeColor;
  }

  /// Returns `true` if the current theme mode is dark.
  bool get isDarkMode {
    return watch<UserPreferencesCubit>().state.isDarkTheme;
  }
}
