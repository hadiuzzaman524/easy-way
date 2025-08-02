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
import 'package:easy_way/data/data_sources/user_preferences_local_data_source.dart'
    as _i151;
import 'package:easy_way/data/repository/car_connect_repository.dart' as _i99;
import 'package:easy_way/data/repository/user_preferences_repository.dart'
    as _i1007;
import 'package:easy_way/domain/services/car_connect_services.dart' as _i495;
import 'package:easy_way/domain/services/user_preferences_service.dart' as _i10;
import 'package:easy_way/domain/usecases/get_language_usecase.dart' as _i436;
import 'package:easy_way/domain/usecases/get_route_usecase.dart' as _i429;
import 'package:easy_way/domain/usecases/get_theme_mode_usecase.dart' as _i758;
import 'package:easy_way/domain/usecases/set_language_usecase.dart' as _i1036;
import 'package:easy_way/domain/usecases/set_theme_mode_usecase.dart' as _i1072;
import 'package:easy_way/infrastructure/module/network_module.dart' as _i567;
import 'package:easy_way/presentation/car_connect/cubit/car_connect_cubit.dart'
    as _i535;
import 'package:easy_way/presentation/cubits/app_theme/app_theme_cubit.dart'
    as _i155;
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
  gh.lazySingleton<_i151.UserPreferencesLocalDataSource>(
    () => _i151.UserPreferencesLocalDataSource(),
  );
  gh.singleton<_i361.Dio>(
    () => networkModule.getUnAuthenticatedDio(),
    instanceName: 'unauthenticated',
  );
  gh.factory<_i10.UserPreferences>(
    () =>
        _i1007.UserPreferencesImpl(gh<_i151.UserPreferencesLocalDataSource>()),
  );
  gh.lazySingleton<_i743.CarConnectRemoteDataSource>(
    () => _i743.CarConnectRemoteDataSource(
      gh<_i361.Dio>(instanceName: 'unauthenticated'),
    ),
  );
  gh.factory<_i1036.SetLanguageUseCase>(
    () => _i1036.SetLanguageUseCase(gh<_i10.UserPreferences>()),
  );
  gh.factory<_i758.GetThemeModeUseCase>(
    () => _i758.GetThemeModeUseCase(gh<_i10.UserPreferences>()),
  );
  gh.factory<_i1072.SetThemeModeUseCase>(
    () => _i1072.SetThemeModeUseCase(gh<_i10.UserPreferences>()),
  );
  gh.factory<_i436.GetLanguageUseCase>(
    () => _i436.GetLanguageUseCase(gh<_i10.UserPreferences>()),
  );
  gh.factory<_i155.AppThemeCubit>(
    () => _i155.AppThemeCubit(
      gh<_i758.GetThemeModeUseCase>(),
      gh<_i1072.SetThemeModeUseCase>(),
      gh<_i436.GetLanguageUseCase>(),
      gh<_i1036.SetLanguageUseCase>(),
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
