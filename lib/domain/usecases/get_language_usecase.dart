import 'package:easy_way/domain/services/user_preferences_service.dart';
import 'package:injectable/injectable.dart';

/// Use case for retrieving the user's language preference.
///
/// Encapsulates the logic for fetching whether Bangla language is selected.
@injectable
class GetLanguageUseCase {
  /// Creates a [GetLanguageUseCase] with the given [UserPreferences] service.
  GetLanguageUseCase(this.userPreferences);

  final UserPreferences userPreferences;

  /// Executes the use case to get the saved language preference.
  ///
  /// Returns `true` if Bangla language is selected, otherwise `false`.
  Future<bool> execute() => userPreferences.getLanguage();
}
