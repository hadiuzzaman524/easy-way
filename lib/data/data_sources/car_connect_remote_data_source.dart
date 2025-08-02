import 'package:dio/dio.dart';
import 'package:easy_way/data/response_objects/google_direction_response.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'car_connect_remote_data_source.g.dart';

@RestApi()
@lazySingleton
abstract class CarConnectRemoteDataSource {
  @factoryMethod
  factory CarConnectRemoteDataSource(@Named('unauthenticated') Dio dio) =
      _CarConnectRemoteDataSource;

  @GET('/directions/json')
  Future<GoogleDirectionResponse> getDirections({
    @Query('origin') required String origin,
    @Query('destination') required String destination,
    @Query('key') required String apiKey,
    @Query('mode') String mode = 'driving',
  });
}
