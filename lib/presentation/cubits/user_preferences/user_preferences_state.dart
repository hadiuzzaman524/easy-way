import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_preferences_state.freezed.dart';

/// Represents the state of user preferences in the application.
///
/// Contains information about the current theme mode, language choice,
/// and the Google Maps style JSON string to apply.
@freezed
abstract class UserPreferencesState with _$UserPreferencesState {
  /// Creates a new instance of [UserPreferencesState].
  ///
  /// - [isDarkTheme]: `true` if dark theme is enabled, otherwise `false`.
  /// - [isBangla]: `true` if Bangla language is selected, otherwise `false`.
  /// - [mapStyle]: JSON string containing the map style to apply to Google Maps.
  const factory UserPreferencesState({
    required bool isDarkTheme,
    required bool isBangla,
    required String mapStyle,
  }) = _UserPreferencesState;
}
