import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mockito/mockito.dart';

class MockGeolocator extends Mock {
  static void mockLocationServices() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
          const MethodChannel('flutter.baseflow.com/geolocator'),
          (message) async {
            switch (message.method) {
              case 'isLocationServiceEnabled':
                return true;
              case 'checkPermission':
                return LocationPermission.whileInUse.index;
              case 'requestPermission':
                return LocationPermission.whileInUse.index;
              case 'getCurrentPosition':
                return {
                  'latitude': 0.0,
                  'longitude': 0.0,
                  'timestamp': DateTime.now().millisecondsSinceEpoch,
                  'accuracy': 0.0,
                  'altitude': 0.0,
                  'speed': 0.0,
                  'speedAccuracy': 0.0,
                  'heading': 0.0,
                };
              default:
                return null;
            }
          },
        );
  }
}
