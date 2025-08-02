import 'package:google_maps_flutter/google_maps_flutter.dart';

class RouteInfo {
  RouteInfo({
    required this.polylines,
    required this.distance,
    required this.duration,
  });

  final Set<Polyline> polylines;
  final String distance;
  final String duration;
}
