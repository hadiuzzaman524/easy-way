import 'package:easy_way/domain/entities/route_info.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract class CarConnectServices {
  Future<RouteInfo?> getRoute(LatLng origin, LatLng destination);
}
