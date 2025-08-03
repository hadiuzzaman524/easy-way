import 'package:easy_way/domain/usecases/get_theme_mode_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helper/mock_services.mocks.dart';

void main() {
  late GetThemeModeUseCase useCase;
  late MockUserPreferences mockUserPreferences;

  setUp(() {
    mockUserPreferences = MockUserPreferences();
    useCase = GetThemeModeUseCase(mockUserPreferences);
  });

  test('returns theme mode from UserPreferences', () async {
    when(mockUserPreferences.getDarkMode()).thenAnswer((_) async => false);

    final result = await useCase.execute();

    expect(result, false);
    verify(mockUserPreferences.getDarkMode()).called(1);
  });

  test('propagates exception from UserPreferences', () async {
    when(mockUserPreferences.getDarkMode()).thenThrow(Exception('Failed'));

    expect(() => useCase.execute(), throwsException);
  });
}
