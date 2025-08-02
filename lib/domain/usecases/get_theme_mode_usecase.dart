import 'package:easy_way/domain/services/user_preferences_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetThemeModeUseCase {
  GetThemeModeUseCase(this.userPreferences);

  final UserPreferences userPreferences;

  Future<bool> execute() => userPreferences.getDarkMode();
}
