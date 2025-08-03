import 'package:easy_way/domain/entities/route_info.dart';
import 'package:easy_way/domain/services/car_connect_services.dart';
import 'package:easy_way/domain/usecases/get_route_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mockito/mockito.dart';

import '../../helper/mock_services.mocks.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late GetRouteUseCase useCase;
  late CarConnectServices mockServices;

  setUp(() {
    mockServices = MockCarConnectServices();
    useCase = GetRouteUseCase(mockServices);
  });

  group('GetRouteUseCase', () {
    const origin = LatLng(23.8103, 90.4125);
    const destination = LatLng(23.8223, 90.4265);
    const routeInfo = RouteInfo(
      polyline: [
        LatLng(23.8103, 90.4125),
        LatLng(23.8223, 90.4265),
      ],
      distance: '2.5 km',
      duration: '10 min',
    );

    test('should get route successfully from repository', () async {
      // Arrange
      when(
        mockServices.getRoute(origin, destination),
      ).thenAnswer((_) async => routeInfo);

      // Act
      final result = await useCase.execute(origin, destination);

      // Assert
      expect(result, routeInfo);
      verify(mockServices.getRoute(origin, destination)).called(1);
    });

    test('should return null when repository returns null', () async {
      // Arrange
      when(
        mockServices.getRoute(origin, destination),
      ).thenAnswer((_) async => null);

      // Act
      final result = await useCase.execute(origin, destination);

      // Assert
      expect(result, null);
      verify(mockServices.getRoute(origin, destination)).called(1);
    });
  });
}
