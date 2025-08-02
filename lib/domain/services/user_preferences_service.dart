
abstract class UserPreferences {
  Future<void> setDarkMode({required bool isDarkMode});
  Future<bool> getDarkMode();
}
