import 'package:easy_way/domain/services/user_preferences_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class SetThemeModeUseCase {
  SetThemeModeUseCase(this.userPreferences);

  final UserPreferences userPreferences;

  Future<void> execute({required bool isDarkMode}) =>
      userPreferences.setDarkMode(isDarkMode: isDarkMode);
}
