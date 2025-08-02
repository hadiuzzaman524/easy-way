import 'package:easy_way/core/app_constant.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class UserPreferencesLocalDataSource {

  final _isDarkModeKey = 'isDarkMode';
  final _isLanguageBangla = 'isBangla';

  final Box<dynamic> box = Hive.box<dynamic>('myAppData');

  Future<void> setDarkMode({required bool isDarkMode}) async {
    await box.put(_isDarkModeKey, isDarkMode);
  }

  Future<bool> getDarkMode() async {
    return box.get(_isDarkModeKey, defaultValue: true) as bool;
  }

  Future<void> setLanguage({required bool isBangla}) async {
    await box.put(_isLanguageBangla, isBangla);
  }

  Future<bool> getLanguage() async {
    return box.get(_isLanguageBangla, defaultValue: true) as bool;
  }
}
