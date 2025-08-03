import 'package:easy_way/domain/usecases/get_language_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helper/mock_services.mocks.dart';

void main() {
  late GetLanguageUseCase useCase;
  late MockUserPreferences mockUserPreferences;

  setUp(() {
    mockUserPreferences = MockUserPreferences();
    useCase = GetLanguageUseCase(mockUserPreferences);
  });

  test('returns language from UserPreferences', () async {
    when(mockUserPreferences.getLanguage()).thenAnswer((_) async => true);

    final result = await useCase.execute();

    expect(result, true);
    verify(mockUserPreferences.getLanguage()).called(1);
  });

  test('propagates exception from UserPreferences', () async {
    when(mockUserPreferences.getLanguage()).thenThrow(Exception('Failed'));

    expect(() => useCase.execute(), throwsException);
  });
}
