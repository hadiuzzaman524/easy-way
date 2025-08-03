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


/// A [Cubit] that manages user preferences such as theme mode and language.
///
/// This cubit handles:
/// - Fetching and persisting the user's theme mode (dark/light).
/// - Fetching and persisting the user's language preference (Bangla or English).
/// - Loading appropriate Google Maps styles based on the theme.
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

  /// Toggles the current theme mode between dark and light.
  ///
  /// Loads the corresponding map style JSON and emits a new state
  /// with updated theme mode and map style.
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

  /// Retrieves the saved theme mode and language preferences.
  ///
  /// Loads the appropriate map style JSON based on the saved theme mode.
  /// Emits a new state with the fetched preferences.
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
  /// Changes the language preference.
  ///
  /// Persists the selected language preference and updates the state.
  ///
  /// [isBangla] determines whether Bangla language is enabled (`true`) or not (`false`).
  Future<void> changeLanguage(bool isBangla) async {
    try {
      await _setLanguageUseCase.execute(isBangla: isBangla);
    } catch (e) {
      debugPrint(e.toString());
    }
    emit(state.copyWith(isBangla: isBangla));
  }
}
