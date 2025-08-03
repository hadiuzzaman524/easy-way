import 'package:bloc/bloc.dart';
import 'package:easy_way/domain/usecases/get_language_usecase.dart';
import 'package:easy_way/domain/usecases/get_theme_mode_usecase.dart';
import 'package:easy_way/domain/usecases/set_language_usecase.dart';
import 'package:easy_way/domain/usecases/set_theme_mode_usecase.dart';
import 'package:easy_way/gen/assets.gen.dart';
import 'package:easy_way/presentation/cubits/user_preferences/user_preferences_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserPreferencesCubit extends Cubit<UserPreferencesState> {
  UserPreferencesCubit(
    this._getThemeModeUseCase,
    this._setThemeModeUseCase,
    this._getLanguageUseCase,
    this._setLanguageUseCase,
  ) : super(
        const UserPreferencesState(
          isDarkTheme: true,
          mapStyle: '[]',
          isBangla: false,
        ),
      );

  final GetThemeModeUseCase _getThemeModeUseCase;
  final SetThemeModeUseCase _setThemeModeUseCase;
  final GetLanguageUseCase _getLanguageUseCase;
  final SetLanguageUseCase _setLanguageUseCase;

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
      final isBangla = await _getLanguageUseCase.execute();
      final path = isDarkMode
          ? Assets.json.darkMapStyle
          : Assets.json.lightMapStyle;

      final mapStyle = await rootBundle.loadString(path);
      emit(
        state.copyWith(
          isDarkTheme: isDarkMode,
          mapStyle: mapStyle,
          isBangla: isBangla,
        ),
      );
    } catch (e) {
      emit(state.copyWith(isDarkTheme: true));
    }
  }

  Future<void> changeLanguage(bool isBangla) async {
    try {
      await _setLanguageUseCase.execute(isBangla: isBangla);
    } catch (e) {
      debugPrint(e.toString());
    }
    emit(state.copyWith(isBangla: isBangla));
  }
}
