import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helper/mock_services.mocks.dart';

void main() {
  late MockUserPreferences mockPrefs;

  setUp(() {
    mockPrefs = MockUserPreferences();
  });

  test('setDarkMode calls with correct value', () async {
    when(mockPrefs.setDarkMode(isDarkMode: true))
        .thenAnswer((_) async => Future.value());

    await mockPrefs.setDarkMode(isDarkMode: true);

    verify(mockPrefs.setDarkMode(isDarkMode: true)).called(1);
  });

  test('getDarkMode returns correct value', () async {
    when(mockPrefs.getDarkMode())
        .thenAnswer((_) async => true);

    final result = await mockPrefs.getDarkMode();

    expect(result, true);
    verify(mockPrefs.getDarkMode()).called(1);
  });

  test('setLanguage calls with correct value', () async {
    when(mockPrefs.setLanguage(isBangla: false))
        .thenAnswer((_) async => Future.value());

    await mockPrefs.setLanguage(isBangla: false);

    verify(mockPrefs.setLanguage(isBangla: false)).called(1);
  });

  test('getLanguage returns correct value', () async {
    when(mockPrefs.getLanguage())
        .thenAnswer((_) async => false);

    final result = await mockPrefs.getLanguage();

    expect(result, false);
    verify(mockPrefs.getLanguage()).called(1);
  });
}
