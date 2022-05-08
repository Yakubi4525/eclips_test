// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/injectable_helpers/injectable_modules.dart' as _i15;
import 'core/network_check/network_info.dart' as _i6;
import 'core/network_check/netwwork_info_impl.dart' as _i7;
import 'features/user_list/data/datasources/local/local_service.dart' as _i4;
import 'features/user_list/data/datasources/local/local_service_imple.dart'
    as _i5;
import 'features/user_list/data/datasources/network/sources/service_api.dart'
    as _i8;
import 'features/user_list/data/datasources/network/sources/service_api_impl.dart'
    as _i9;
import 'features/user_list/data/repositories/repository.dart' as _i11;
import 'features/user_list/domain/reositories/data_repository.dart' as _i10;
import 'features/user_list/ui/character_post_screen/bloc/character_post_bloc.dart'
    as _i13;
import 'features/user_list/ui/character_user_screen/bloc/character_user_bloc.dart'
    as _i14;
import 'features/user_list/ui/users_screen/bloc/users_screen_bloc.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.lazySingleton<_i3.Dio>(() => injectableModule.dio);
  gh.lazySingleton<_i4.LocalService>(() => _i5.LocalServiceImpl());
  gh.lazySingleton<_i6.NetworkInfo>(() => _i7.NetworkInfoImpl());
  gh.lazySingleton<_i8.ServerApi>(() => _i9.ServerApiImpl(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i10.DataRepository>(() => _i11.DataRepositoryImpl(
      serverApi: get<_i8.ServerApi>(),
      localService: get<_i4.LocalService>(),
      networkInfo: get<_i6.NetworkInfo>()));
  gh.factory<_i12.UsersScreenBloc>(
      () => _i12.UsersScreenBloc(get<_i10.DataRepository>()));
  gh.factory<_i13.CharacterPostBloc>(
      () => _i13.CharacterPostBloc(get<_i10.DataRepository>()));
  gh.factory<_i14.CharacterUserBloc>(
      () => _i14.CharacterUserBloc(get<_i10.DataRepository>()));
  return get;
}

class _$InjectableModule extends _i15.InjectableModule {}
