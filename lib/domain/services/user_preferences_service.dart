abstract class UserPreferences {
  Future<void> setDarkMode({required bool isDarkMode});

  Future<bool> getDarkMode();

  Future<void> setLanguage({required bool isBangla});

  Future<bool> getLanguage();
}
