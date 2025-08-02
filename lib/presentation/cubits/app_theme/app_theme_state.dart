import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_theme_state.freezed.dart';

@freezed
abstract class AppThemeState with _$AppThemeState {
  const factory AppThemeState({
    required bool isDarkTheme,
    required bool isBangla,
    required String mapStyle,
  }) = _AppThemeState;
}
