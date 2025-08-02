import 'package:bloc/bloc.dart';
import 'package:easy_way/core/app_constant.dart';
import 'package:easy_way/gen/assets.gen.dart';
import 'package:easy_way/presentation/cubits/app_theme/app_theme_state.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';

class AppThemeCubit extends Cubit<AppThemeState> {
  AppThemeCubit()
    : super(const AppThemeState(isDarkTheme: true, mapStyle: '[]'));

  Future<void> changeThemeMode() async {
    final box = await Hive.openBox(AppConstant.localDatabaseBoxName);
    late bool isDarkMode;
    try {
      isDarkMode = box.get('isDarkMode') as bool;
    } catch (e) {
      isDarkMode = false;
    }
    await box.put('isDarkMode', !isDarkMode);
    final path = isDarkMode
        ? Assets.json.lightMapStyle
        : Assets.json.darkMapStyle;

    final mapStyle = await rootBundle.loadString(path);
    emit(state.copyWith(isDarkTheme: !isDarkMode, mapStyle: mapStyle));
  }

  Future<void> getThemeMode() async {
    try {
      final box = await Hive.openBox(AppConstant.localDatabaseBoxName);
      final isDarkMode = box.get('isDarkMode') as bool;
      emit(state.copyWith(isDarkTheme: isDarkMode));
    } catch (e) {
      emit(state.copyWith(isDarkTheme: true));
    }
  }
}
