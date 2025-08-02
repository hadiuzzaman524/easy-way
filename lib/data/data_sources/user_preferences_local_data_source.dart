import 'package:easy_way/core/app_constant.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class UserPreferencesLocalDataSource {
  static const _isDarkModeKey = 'isDarkMode';

  Future<void> setDarkMode({required bool isDarkMode}) async {
    final box = await Hive.openBox(AppConstant.localDatabaseBoxName);
    await box.put(_isDarkModeKey, isDarkMode);
  }

  Future<bool> getDarkMode() async {
    final box = await Hive.openBox(AppConstant.localDatabaseBoxName);
    return box.get(_isDarkModeKey, defaultValue: true) as bool;
  }
}
