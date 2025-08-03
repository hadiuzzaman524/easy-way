import 'package:bloc_test/bloc_test.dart';
import 'package:easy_way/data/data_sources/car_connect_remote_data_source.dart';
import 'package:easy_way/data/data_sources/user_preferences_local_data_source.dart';
import 'package:easy_way/domain/services/car_connect_services.dart';
import 'package:easy_way/domain/services/user_preferences_service.dart';
import 'package:easy_way/domain/usecases/get_language_usecase.dart';
import 'package:easy_way/domain/usecases/get_route_usecase.dart';
import 'package:easy_way/domain/usecases/get_theme_mode_usecase.dart';
import 'package:easy_way/domain/usecases/set_language_usecase.dart';
import 'package:easy_way/domain/usecases/set_theme_mode_usecase.dart';
import 'package:easy_way/presentation/car_connect/cubit/car_connect_cubit.dart';
import 'package:easy_way/presentation/car_connect/cubit/car_connect_state.dart';
import 'package:easy_way/presentation/cubits/user_preferences/user_preferences_cubit.dart';
import 'package:easy_way/presentation/cubits/user_preferences/user_preferences_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hive/hive.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

class MockCarConnectCubit extends MockCubit<CarConnectState>
    implements CarConnectCubit {}

class MockUserPreferencesCubit extends MockCubit<UserPreferencesState>
    implements UserPreferencesCubit {}

class FakeLatLng extends Fake implements LatLng {}

class FakeCarConnectState extends Fake implements CarConnectState {}

class FakeUserPreferencesState extends Fake implements UserPreferencesState {}

@GenerateMocks([
  CarConnectServices,
  GetRouteUseCase,
  GoogleMapController,
  UserPreferences,
  UserPreferencesLocalDataSource,
  Box,
  GetThemeModeUseCase,
  SetThemeModeUseCase,
  GetLanguageUseCase,
  SetLanguageUseCase,
  CarConnectRemoteDataSource,
])
void main() {}
