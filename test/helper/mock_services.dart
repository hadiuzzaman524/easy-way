import 'package:mockito/annotations.dart';
import 'package:easy_way/domain/services/car_connect_services.dart';
import 'package:easy_way/domain/usecases/get_route_usecase.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

@GenerateMocks([
  CarConnectServices,
  GetRouteUseCase,
  GoogleMapController,
])
void main() {}