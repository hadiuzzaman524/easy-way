import 'package:bloc/bloc.dart';
import 'package:easy_way/domain/usecases/get_theme_mode_usecase.dart';
import 'package:easy_way/domain/usecases/set_theme_mode_usecase.dart';
import 'package:easy_way/gen/assets.gen.dart';
import 'package:easy_way/presentation/cubits/app_theme/app_theme_state.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@injectable
class AppThemeCubit extends Cubit<AppThemeState> {
  AppThemeCubit(this._getThemeModeUseCase, this._setThemeModeUseCase)
    : super(const AppThemeState(isDarkTheme: true, mapStyle: '[]'));

  final GetThemeModeUseCase _getThemeModeUseCase;
  final SetThemeModeUseCase _setThemeModeUseCase;

  Future<void> changeThemeMode() async {
    late bool isDarkMode;
    try {
      isDarkMode = await _getThemeModeUseCase.execute();
    } catch (e) {
      isDarkMode = false;
    }
    await _setThemeModeUseCase.execute(isDarkMode: !isDarkMode);

    final path = isDarkMode
        ? Assets.json.lightMapStyle
        : Assets.json.darkMapStyle;

    final mapStyle = await rootBundle.loadString(path);
    emit(state.copyWith(isDarkTheme: !isDarkMode, mapStyle: mapStyle));
  }

  Future<void> getThemeMode() async {
    try {
      final isDarkMode = await _getThemeModeUseCase.execute();
      final path = isDarkMode
          ? Assets.json.darkMapStyle
          : Assets.json.lightMapStyle;

      final mapStyle = await rootBundle.loadString(path);
      emit(state.copyWith(isDarkTheme: isDarkMode, mapStyle: mapStyle));
    } catch (e) {
      emit(state.copyWith(isDarkTheme: true));
    }
  }
}
