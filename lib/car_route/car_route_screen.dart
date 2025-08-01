import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:dio/dio.dart';

class CarRouteScreen extends StatefulWidget {
  const CarRouteScreen({super.key});

  @override
  State<CarRouteScreen> createState() => _CarRouteScreenState();
}

class _CarRouteScreenState extends State<CarRouteScreen> {
  final Completer<GoogleMapController> _controller = Completer();

  LatLng? _origin;
  LatLng? _destination;
  Set<Marker> _markers = {};
  Set<Polyline> _polylines = {};
  String? _distance;
  String? _duration;

  static const CameraPosition _initialCameraPosition = CameraPosition(
    target: LatLng(23.8103, 90.4125), // Dhaka approx
    zoom: 12,
  );

  Future<void> _getRoute() async {
    if (_origin == null || _destination == null) return;

    const apiKey = 'AIzaSyB0b4TGm-toABe37pTnvaNis10BN4Ka4Jk'; // Replace with your actual API key

    try {
      final response = await Dio().get(
        'https://maps.googleapis.com/maps/api/directions/json',
        queryParameters: {
          'origin': '${_origin!.latitude},${_origin!.longitude}',
          'destination': '${_destination!.latitude},${_destination!.longitude}',
          'mode': 'driving',
          'key': apiKey,
          'alternatives': 'false', // shortest route (default)
        },
      );

      if (response.data['status'] == 'OK') {
        final route = response.data['routes'][0];
        final polyline = route['overview_polyline']['points'];
        final decoded = _decodePolyline(polyline.toString());
        final leg = route['legs'][0];

        setState(() {
          _polylines.clear();
          _polylines.add(Polyline(
            polylineId: const PolylineId('route'),
            color: Colors.blue,
            width: 5,
            points: decoded,
          ));
          _distance = leg['distance']['text'].toString();
          _duration = leg['duration']['text'].toString();
        });

        _moveCameraToFitBounds(decoded);
      } else {
        debugPrint('Directions API returned status: ${response.data['status']}');
      }
    } catch (e) {
      debugPrint('Error fetching directions: $e');
    }
  }

  void _moveCameraToFitBounds(List<LatLng> points) async {
    final GoogleMapController controller = await _controller.future;

    double minLat = points.first.latitude;
    double maxLat = points.first.latitude;
    double minLng = points.first.longitude;
    double maxLng = points.first.longitude;

    for (final point in points) {
      if (point.latitude < minLat) minLat = point.latitude;
      if (point.latitude > maxLat) maxLat = point.latitude;
      if (point.longitude < minLng) minLng = point.longitude;
      if (point.longitude > maxLng) maxLng = point.longitude;
    }

    final bounds = LatLngBounds(
      southwest: LatLng(minLat, minLng),
      northeast: LatLng(maxLat, maxLng),
    );

    controller.animateCamera(CameraUpdate.newLatLngBounds(bounds, 50));
  }

  List<LatLng> _decodePolyline(String encoded) {
    List<LatLng> points = [];
    int index = 0, len = encoded.length;
    int lat = 0, lng = 0;

    while (index < len) {
      int b, shift = 0, result = 0;

      do {
        b = encoded.codeUnitAt(index++) - 63;
        result |= (b & 0x1f) << shift;
        shift += 5;
      } while (b >= 0x20);

      int dlat = (result & 1) != 0 ? ~(result >> 1) : (result >> 1);
      lat += dlat;

      shift = 0;
      result = 0;

      do {
        b = encoded.codeUnitAt(index++) - 63;
        result |= (b & 0x1f) << shift;
        shift += 5;
      } while (b >= 0x20);

      int dlng = (result & 1) != 0 ? ~(result >> 1) : (result >> 1);
      lng += dlng;

      points.add(LatLng(lat / 1e5, lng / 1e5));
    }

    return points;
  }

  void _onMapTap(LatLng position) {
    setState(() {
      if (_origin == null || (_origin != null && _destination != null)) {
        // Starting new selection, reset destination & polylines
        _origin = position;
        _destination = null;
        _polylines.clear();
        _markers = {
          Marker(markerId: const MarkerId('origin'), position: position),
        };
        _distance = null;
        _duration = null;
      } else {
        // Set destination and fetch route
        _destination = position;
        _markers.add(Marker(markerId: const MarkerId('destination'), position: position));
        _getRoute();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Car Route Planner"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: _initialCameraPosition,
            onMapCreated: (controller) => _controller.complete(controller),
            markers: _markers,
            polylines: _polylines,
            onTap: _onMapTap,
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            zoomControlsEnabled: true,
            mapType: MapType.normal,
          ),
          if (_distance != null && _duration != null)
            Positioned(
              top: 15,
              left: 15,
              right: 15,
              child: Card(
                color: Colors.white,
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    'Distance: $_distance | Duration: $_duration',
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
