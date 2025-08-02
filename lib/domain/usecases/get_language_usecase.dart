import 'package:easy_way/domain/services/user_preferences_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetLanguageUseCase {
  GetLanguageUseCase(this.userPreferences);

  final UserPreferences userPreferences;

  Future<bool> execute() => userPreferences.getLanguage();
}
