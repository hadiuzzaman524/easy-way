import 'package:easy_way/domain/usecases/set_language_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../helper/mock_services.mocks.dart';

void main() {
  late SetLanguageUseCase useCase;
  late MockUserPreferences mockUserPreferences;

  setUp(() {
    mockUserPreferences = MockUserPreferences();
    useCase = SetLanguageUseCase(mockUserPreferences);
  });

  test('calls setLanguage on UserPreferences with correct value', () async {
    // Arrange
    when(mockUserPreferences.setLanguage(isBangla: true))
        .thenAnswer((_) async => Future.value());

    // Act
    await useCase.execute(isBangla: true);

    // Assert
    verify(mockUserPreferences.setLanguage(isBangla: true)).called(1);
  });

  test('propagates exception from UserPreferences', () async {
    // Arrange
    when(mockUserPreferences.setLanguage(isBangla: false))
        .thenThrow(Exception('Failed'));

    // Act & Assert
    expect(
          () => useCase.execute(isBangla: false),
      throwsException,
    );
  });
}
