// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'classes.dart' as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.DataSource1>(_i3.DataSource1());
  gh.singleton<_i3.DataSource2>(_i3.DataSource2());
  gh.factory<_i3.Repository1>(() => _i3.Repository1Impl(
      dataSource1: get<_i3.DataSource1>(),
      dataSource2: get<_i3.DataSource2>()));
  gh.singleton<_i3.Repository2>(_i3.Repository2DBImplementation(),
      instanceName: 'db');
  gh.singleton<_i3.Repository2>(_i3.Repository2SPImplementation(),
      instanceName: 'sp');
  gh.factory<_i3.UseCase2>(() => _i3.UseCase2(
      dbRepository: get<_i3.Repository2>(instanceName: 'db'),
      spRepository: get<_i3.Repository2>(instanceName: 'sp')));
  gh.factoryParam<_i3.UseCase3, String, dynamic>((name, _) =>
      _i3.UseCase3(repository1: get<_i3.Repository1>(), name: name));
  return get;
}
