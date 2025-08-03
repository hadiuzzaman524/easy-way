import 'package:easy_way/domain/services/user_preferences_service.dart';
import 'package:injectable/injectable.dart';

/// Use case for retrieving the user's theme mode preference.
///
/// Encapsulates the logic to get whether dark mode is enabled.
@injectable
class GetThemeModeUseCase {
  /// Creates a [GetThemeModeUseCase] with the given [UserPreferences] service.
  GetThemeModeUseCase(this.userPreferences);

  final UserPreferences userPreferences;

  /// Executes the use case to fetch the current theme mode.
  ///
  /// Returns `true` if dark mode is enabled, otherwise `false`.
  Future<bool> execute() => userPreferences.getDarkMode();
}
