import 'package:easy_way/domain/usecases/set_theme_mode_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helper/mock_services.mocks.dart';

void main() {
  late SetThemeModeUseCase useCase;
  late MockUserPreferences mockUserPreferences;

  setUp(() {
    mockUserPreferences = MockUserPreferences();
    useCase = SetThemeModeUseCase(mockUserPreferences);
  });

  test('calls setDarkMode on UserPreferences with correct value', () async {
    // Arrange
    when(
      mockUserPreferences.setDarkMode(isDarkMode: true),
    ).thenAnswer((_) async => Future.value());

    // Act
    await useCase.execute(isDarkMode: true);

    // Assert
    verify(mockUserPreferences.setDarkMode(isDarkMode: true)).called(1);
  });

  test('propagates exception from UserPreferences', () async {
    // Arrange
    when(
      mockUserPreferences.setDarkMode(isDarkMode: false),
    ).thenThrow(Exception('Failed'));

    // Act & Assert
    expect(() => useCase.execute(isDarkMode: false), throwsException);
  });
}
