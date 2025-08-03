/// Abstract interface for managing user preference settings.
///
/// Implementations should handle persistence and retrieval of user settings
/// such as theme mode and language choice.
abstract class UserPreferences {
  /// Persists the user's theme mode preference.
  ///
  /// [isDarkMode] - `true` to enable dark mode, `false` for light mode.
  Future<void> setDarkMode({required bool isDarkMode});

  /// Retrieves the saved theme mode preference.
  ///
  /// Returns `true` if dark mode is enabled, otherwise `false`.
  Future<bool> getDarkMode();

  /// Persists the user's language preference.
  ///
  /// [isBangla] - `true` if Bangla language is selected, `false` otherwise.
  Future<void> setLanguage({required bool isBangla});

  /// Retrieves the saved language preference.
  ///
  /// Returns `true` if Bangla language is selected, otherwise `false`.
  Future<bool> getLanguage();
}
