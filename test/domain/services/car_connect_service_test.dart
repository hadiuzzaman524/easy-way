import 'package:easy_way/domain/entities/route_info.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mockito/mockito.dart';

import '../../helper/mock_services.mocks.dart';

void main() {
  late MockCarConnectServices mockService;

  setUp(() {
    mockService = MockCarConnectServices();
  });

  test('getRoute returns RouteInfo', () async {
    const origin = LatLng(23.8103, 90.4125);
    const destination = LatLng(23.8223, 90.4265);
    const routeInfo = RouteInfo(
      polyline: [origin, destination],
      distance: '2.5 km',
      duration: '10 min',
    );

    when(
      mockService.getRoute(origin, destination),
    ).thenAnswer((_) async => routeInfo);

    final result = await mockService.getRoute(origin, destination);

    expect(result, routeInfo);
    verify(mockService.getRoute(origin, destination)).called(1);
  });

  test('getRoute returns null', () async {
    const origin = LatLng(23.8103, 90.4125);
    const destination = LatLng(23.8223, 90.4265);

    when(
      mockService.getRoute(origin, destination),
    ).thenAnswer((_) async => null);

    final result = await mockService.getRoute(origin, destination);

    expect(result, isNull);
    verify(mockService.getRoute(origin, destination)).called(1);
  });
}
