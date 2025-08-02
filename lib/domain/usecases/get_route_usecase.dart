import 'package:easy_way/domain/entities/route_info.dart';
import 'package:easy_way/domain/services/car_connect_services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetRouteUseCase {
  GetRouteUseCase(this.repository);

  final CarConnectServices repository;

  Future<RouteInfo?> execute(LatLng origin, LatLng destination) async {
    return repository.getRoute(origin, destination);
  }
}
