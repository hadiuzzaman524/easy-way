// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:easy_way/data/data_sources/car_connect_remote_data_source.dart'
    as _i743;
import 'package:easy_way/data/repository/car_connect_repository.dart' as _i99;
import 'package:easy_way/domain/services/car_connect_services.dart' as _i495;
import 'package:easy_way/domain/usecases/get_route_usecase.dart' as _i429;
import 'package:easy_way/infrastructure/module/network_module.dart' as _i567;
import 'package:easy_way/presentation/car_connect/cubit/car_connect_cubit.dart'
    as _i535;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  final networkModule = _$NetworkModule();
  gh.singleton<_i361.Dio>(
    () => networkModule.getUnAuthenticatedDio(),
    instanceName: 'unauthenticated',
  );
  gh.lazySingleton<_i743.CarConnectRemoteDataSource>(
    () => _i743.CarConnectRemoteDataSource(
      gh<_i361.Dio>(instanceName: 'unauthenticated'),
    ),
  );
  gh.factory<_i495.CarConnectServices>(
    () => _i99.CarConnectRepository(gh<_i743.CarConnectRemoteDataSource>()),
  );
  gh.factory<_i429.GetRouteUseCase>(
    () => _i429.GetRouteUseCase(gh<_i495.CarConnectServices>()),
  );
  gh.factory<_i535.CarConnectCubit>(
    () => _i535.CarConnectCubit(getRouteUseCase: gh<_i429.GetRouteUseCase>()),
  );
  return getIt;
}

class _$NetworkModule extends _i567.NetworkModule {}
