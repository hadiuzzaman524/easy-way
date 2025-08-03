import 'dart:convert';
import 'package:easy_way/data/repository/car_connect_repository.dart';
import 'package:easy_way/data/response_objects/google_direction_response.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mockito/mockito.dart';

import '../../helper/mock_services.mocks.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late CarConnectRepository repository;
  late MockCarConnectRemoteDataSource mockRemoteDataSource;

  setUp(() {
    mockRemoteDataSource = MockCarConnectRemoteDataSource();
    repository = CarConnectRepository(mockRemoteDataSource);
  });

  group('CarConnectRepository', () {
    const origin = LatLng(23.8103735, 90.4124956);
    const destination = LatLng(22.3568784, 91.7831636);

    test(
      'getRoute returns RouteInfo when response is successful (from JSON)',
      () async {
        // Load dummy response from JSON file
        final jsonString = await rootBundle.loadString(
          'test/fixture/google_direction_response.json',
        );
        final jsonMap = json.decode(jsonString) as Map<String, dynamic>;
        final response = GoogleDirectionResponse.fromJson(jsonMap);

        when(
          mockRemoteDataSource.getDirections(
            origin: '${origin.latitude},${origin.longitude}',
            destination: '${destination.latitude},${destination.longitude}',
            apiKey: anyNamed('apiKey'),
          ),
        ).thenAnswer((_) async => response);

        // Act
        final result = await repository.getRoute(origin, destination);

        // Assert
        expect(result, isNotNull);
        expect(result!.distance, '249 km');
        expect(result.duration, '4 hours 51 mins');
        expect(result.polyline, isNotEmpty);
      },
    );

    test('getRoute returns null when status is not OK', () async {
      const response = GoogleDirectionResponse(
        status: 'ZERO_RESULTS',
        routes: [],
      );

      when(
        mockRemoteDataSource.getDirections(
          origin: anyNamed('origin'),
          destination: anyNamed('destination'),
          apiKey: anyNamed('apiKey'),
        ),
      ).thenAnswer((_) async => response);

      final result = await repository.getRoute(origin, destination);

      expect(result, isNull);
    });

    test('getRoute handles empty routes', () async {
      const response = GoogleDirectionResponse(
        status: 'OK',
        routes: [],
      );

      when(
        mockRemoteDataSource.getDirections(
          origin: anyNamed('origin'),
          destination: anyNamed('destination'),
          apiKey: anyNamed('apiKey'),
        ),
      ).thenAnswer((_) async => response);

      final result = await repository.getRoute(origin, destination);

      expect(result, isNull);
    });
  });
}
