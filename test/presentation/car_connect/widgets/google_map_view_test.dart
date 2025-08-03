import 'package:easy_way/presentation/car_connect/cubit/car_connect_cubit.dart';
import 'package:easy_way/presentation/car_connect/cubit/car_connect_state.dart';
import 'package:easy_way/presentation/car_connect/widgets/google_map_view.dart';
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
    registerFallbackValue(
      const CarConnectState(),
    );
  });

  setUp(() {
    carConnectCubit = MockCarConnectCubit();
    userPreferencesCubit = MockUserPreferencesCubit();
  });

  testWidgets('renders GoogleMapView and verifies basic layout', (
    WidgetTester tester,
  ) async {
    when(() => carConnectCubit.state).thenReturn(
      const CarConnectState(),
    );

    when(() => userPreferencesCubit.state).thenReturn(
      const UserPreferencesState(
        mapStyle: '',
        isDarkTheme: true,
        isBangla: false,
      ),
    );

    await tester.pumpWidget(
      MaterialApp(
        home: MultiBlocProvider(
          providers: [
            BlocProvider<CarConnectCubit>.value(value: carConnectCubit),
            BlocProvider<UserPreferencesCubit>.value(
              value: userPreferencesCubit,
            ),
          ],
          child: const GoogleMapView(),
        ),
      ),
    );

    // Assert that GoogleMap is present
    expect(find.byType(GoogleMapView), findsOneWidget);
  });
}
