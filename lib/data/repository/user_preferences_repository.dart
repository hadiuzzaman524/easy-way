import 'package:easy_way/data/data_sources/user_preferences_local_data_source.dart';
import 'package:easy_way/domain/services/user_preferences_service.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: UserPreferences)
class UserPreferencesImpl implements UserPreferences {
  UserPreferencesImpl(this._dataSource);

  final UserPreferencesLocalDataSource _dataSource;

  @override
  Future<void> setDarkMode({required bool isDarkMode}) =>
      _dataSource.setDarkMode(isDarkMode: isDarkMode);

  @override
  Future<bool> getDarkMode() => _dataSource.getDarkMode();
}
