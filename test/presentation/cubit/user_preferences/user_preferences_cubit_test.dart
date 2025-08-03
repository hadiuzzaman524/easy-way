import 'package:bloc_test/bloc_test.dart';
import 'package:easy_way/presentation/cubits/user_preferences/user_preferences_cubit.dart';
import 'package:easy_way/presentation/cubits/user_preferences/user_preferences_state.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../../helper/mock_services.mocks.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late UserPreferencesCubit cubit;
  late MockGetThemeModeUseCase mockGetThemeModeUseCase;
  late MockSetThemeModeUseCase mockSetThemeModeUseCase;
  late MockGetLanguageUseCase mockGetLanguageUseCase;
  late MockSetLanguageUseCase mockSetLanguageUseCase;

  const darkMapStyle = '[{"dark": true}]';
  const lightMapStyle = '[{"dark": false}]';

  setUp(() {
    mockGetThemeModeUseCase = MockGetThemeModeUseCase();
    mockSetThemeModeUseCase = MockSetThemeModeUseCase();
    mockGetLanguageUseCase = MockGetLanguageUseCase();
    mockSetLanguageUseCase = MockSetLanguageUseCase();

    // Mock both dark and light map styles
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
          const MethodChannel('flutter/assets'),
          (MethodCall methodCall) async {
            if (methodCall.arguments == 'assets/json/map_styles/dark.json') {
              return ByteData.sublistView(
                Uint8List.fromList(darkMapStyle.codeUnits),
              );
            }
            if (methodCall.arguments == 'assets/json/map_styles/light.json') {
              return ByteData.sublistView(
                Uint8List.fromList(lightMapStyle.codeUnits),
              );
            }
            return null;
          },
        );

    // Initialize cubit after setting up mocks
    cubit = UserPreferencesCubit(
      mockGetThemeModeUseCase,
      mockSetThemeModeUseCase,
      mockGetLanguageUseCase,
      mockSetLanguageUseCase,
    );
  });

  tearDown(() {
    cubit.close();
  });

  group('UserPreferencesCubit', () {
    test('initial state is correct', () {
      expect(
        cubit.state,
        const UserPreferencesState(
          isDarkTheme: true,
          mapStyle: '[]',
          isBangla: false,
        ),
      );
    });

    blocTest<UserPreferencesCubit, UserPreferencesState>(
      'changeLanguage updates language setting',
      build: () {
        when(
          mockSetLanguageUseCase.execute(isBangla: true),
        ).thenAnswer((_) async => null);
        return cubit;
      },
      act: (cubit) => cubit.changeLanguage(true),
      expect: () => [
        const UserPreferencesState(
          isDarkTheme: true,
          mapStyle: '[]',
          isBangla: true,
        ),
      ],
      verify: (_) {
        verify(mockSetLanguageUseCase.execute(isBangla: true)).called(1);
      },
    );

  });
}
