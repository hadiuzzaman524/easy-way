import 'package:bloc_test/bloc_test.dart';
import 'package:easy_way/domain/entities/route_info.dart';
import 'package:easy_way/presentation/car_connect/cubit/car_connect_cubit.dart';
import 'package:easy_way/presentation/car_connect/cubit/car_connect_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mockito/mockito.dart';

import '../../../helper/mock_geolocator.dart';
import '../../../helper/mock_services.mocks.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late CarConnectCubit cubit;
  late MockGetRouteUseCase mockGetRouteUseCase;

  setUp(() {
    MockGeolocator.mockLocationServices();
    mockGetRouteUseCase = MockGetRouteUseCase();
    cubit = CarConnectCubit(getRouteUseCase: mockGetRouteUseCase);
  });

  tearDown(() {
    cubit.close();
  });

  group('CarConnectCubit', () {
    const origin = LatLng(23.8103, 90.4125);
    const destination = LatLng(23.8223, 90.4265);
    const routeInfo = RouteInfo(
      polyline: [origin, destination],
      distance: '2.5 km',
      duration: '10 min',
    );

    test('initial state is correct', () {
      expect(cubit.state.origin, null);
      expect(cubit.state.destination, null);
      expect(cubit.state.markers, isEmpty);
      expect(cubit.state.polylines, isEmpty);
      expect(cubit.state.isLoading, false);
    });

    blocTest<CarConnectCubit, CarConnectState>(
      'emits state with origin marker when first point selected',
      build: () => cubit,
      act: (cubit) => cubit.selectPoint(origin),
      expect: () => [
        predicate<CarConnectState>(
          (state) => state.origin == origin && state.markers.length == 1,
        ),
      ],
    );

    blocTest<CarConnectCubit, CarConnectState>(
      'emits states when both points are selected and route is fetched',
      build: () {
        when(
          mockGetRouteUseCase.execute(origin, destination),
        ).thenAnswer((_) async => routeInfo);
        return cubit;
      },
      act: (cubit) async {
        await cubit.selectPoint(origin);
        await cubit.selectPoint(destination);
      },
      expect: () => [
        predicate<CarConnectState>(
          (state) => state.origin == origin && state.markers.length == 1,
        ),
        predicate<CarConnectState>(
          (state) =>
              state.destination == destination && state.isLoading == true,
        ),
        predicate<CarConnectState>(
          (state) =>
              state.distance == routeInfo.distance &&
              state.duration == routeInfo.duration &&
              !state.isLoading,
        ),
      ],
    );

    test('clearRoute resets state', () {
      cubit.clearRoute();
      expect(cubit.state, const CarConnectState());
    });
  });
}
