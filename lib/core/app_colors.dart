import 'package:easy_way/presentation/cubits/user_preferences/user_preferences_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_colors.freezed.dart';

@freezed
abstract class AppColors with _$AppColors {
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

/// This is an extension function, during the development time we can use
/// color by using `context.colors.primaryColor` like this
extension BuildContextExtension on BuildContext {
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

  bool get isDarkMode {
    return watch<UserPreferencesCubit>().state.isDarkTheme;
  }
}
