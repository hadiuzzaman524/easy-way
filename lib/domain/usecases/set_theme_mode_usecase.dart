import 'package:easy_way/domain/services/user_preferences_service.dart';
import 'package:injectable/injectable.dart';

/// Use case for saving the user's theme mode preference.
///
/// Encapsulates the logic to persist whether dark mode is enabled.
@injectable
class SetThemeModeUseCase {
  /// Creates a [SetThemeModeUseCase] with the given [UserPreferences] service.
  SetThemeModeUseCase(this.userPreferences);

  final UserPreferences userPreferences;

  /// Executes the use case to save the theme mode preference.
  ///
  /// [isDarkMode] should be `true` to enable dark mode, or `false` for light mode.
  Future<void> execute({required bool isDarkMode}) =>
      userPreferences.setDarkMode(isDarkMode: isDarkMode);
}
