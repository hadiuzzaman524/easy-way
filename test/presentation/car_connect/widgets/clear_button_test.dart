import 'package:easy_way/l10n/gen/app_localizations.dart';
import 'package:easy_way/presentation/car_connect/cubit/car_connect_cubit.dart';
import 'package:easy_way/presentation/car_connect/cubit/car_connect_state.dart';
import 'package:easy_way/presentation/car_connect/widgets/clear_button.dart';
import 'package:easy_way/presentation/cubits/user_preferences/user_preferences_cubit.dart';
import 'package:easy_way/presentation/cubits/user_preferences/user_preferences_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helper/mock_services.dart';

void main() {
  late MockCarConnectCubit carConnectCubit;
  late MockUserPreferencesCubit userPreferencesCubit;

  setUpAll(() {
    registerFallbackValue(FakeCarConnectState());
    registerFallbackValue(FakeUserPreferencesState());
  });

  setUp(() {
    carConnectCubit = MockCarConnectCubit();
    userPreferencesCubit = MockUserPreferencesCubit();
  });

  testWidgets(
    'ClearButton calls clearRoute on tap and displays correct label',
    (WidgetTester tester) async {
      // Mock states
      when(() => carConnectCubit.state).thenReturn(const CarConnectState());
      when(() => userPreferencesCubit.state).thenReturn(
        const UserPreferencesState(
          isBangla: false, // set to false to get 'Clear' in English
          isDarkTheme: true,
          mapStyle: '',
        ),
      );
      when(() => carConnectCubit.clearRoute()).thenReturn(null);

      // Build widget
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: const Locale('en'), // force English
          home: MultiBlocProvider(
            providers: [
              BlocProvider<CarConnectCubit>.value(value: carConnectCubit),
              BlocProvider<UserPreferencesCubit>.value(
                value: userPreferencesCubit,
              ),
            ],
            child: const Scaffold(body: Stack(children: [ClearButton()])),
          ),
        ),
      );

      // Wait for localization to load
      await tester.pumpAndSettle();

      // Check label text
      expect(find.text('Clear'), findsOneWidget);

      // Tap the FAB
      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();

      // Verify the method is called
      verify(() => carConnectCubit.clearRoute()).called(1);
    },
  );
}
