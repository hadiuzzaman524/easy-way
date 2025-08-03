import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_preferences_state.freezed.dart';

@freezed
abstract class UserPreferencesState with _$UserPreferencesState {
  const factory UserPreferencesState({
    required bool isDarkTheme,
    required bool isBangla,
    required String mapStyle,
  }) = _UserPreferencesState;
}
