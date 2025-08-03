import 'package:easy_way/domain/services/user_preferences_service.dart';
import 'package:injectable/injectable.dart';

/// Use case for saving the user's language preference.
///
/// Encapsulates the logic to persist whether Bangla language is selected.
@injectable
class SetLanguageUseCase {
  /// Creates a [SetLanguageUseCase] with the given [UserPreferences] service.
  SetLanguageUseCase(this.userPreferences);

  final UserPreferences userPreferences;

  /// Executes the use case to save the language preference.
  ///
  /// [isBangla] should be `true` to select Bangla language, or `false` otherwise.
  Future<void> execute({required bool isBangla}) =>
      userPreferences.setLanguage(isBangla: isBangla);
}
