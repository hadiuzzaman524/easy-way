import 'package:easy_way/domain/services/user_preferences_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class SetLanguageUseCase {
  SetLanguageUseCase(this.userPreferences);

  final UserPreferences userPreferences;

  Future<void> execute({required bool isBangla}) =>
      userPreferences.setLanguage(isBangla: isBangla);
}
