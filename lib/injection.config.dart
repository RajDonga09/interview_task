// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i10;

import 'core/network/http_interceptor.dart' as _i9;
import 'core/network/network.dart' as _i5;
import 'core/network/network_info.dart' as _i12;
import 'injection.dart' as _i6;
import 'modules/exercise/data/datasources/exercise_remote_data_source.dart' as _i7;
import 'modules/exercise/data/repositories/exercise_repository_impl.dart' as _i8;
import 'modules/exercise/domain/repositories/exercise_repository.dart' as _i4;
import 'modules/exercise/domain/usecases/change_exercise_status.dart' as _i3;
import 'modules/exercise/domain/usecases/load_exercise.dart' as _i11;
import 'modules/exercise/presentation/cubit/exercise_cubit.dart' as _i13;

const String _dev = 'dev';
const String _prod = 'prod';
const String _test = 'test';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerThirdPartyModules = _$RegisterThirdPartyModules();
    gh.lazySingleton<_i3.ChangeExerciseStatus>(
        () => _i3.ChangeExerciseStatus(gh<_i4.ExerciseRepository>()));
    gh.factory<_i5.Client>(
      () => registerThirdPartyModules.httpClient,
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i5.Client>(
      () => _i6.MockHttpClient(),
      registerFor: {_test},
    );
    gh.lazySingleton<_i7.ExerciseRemoteDataSource>(
      () => _i7.ExerciseHostApiDataSource(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i4.ExerciseRepository>(
        () => _i8.ExerciseRepositoryImpl(gh<_i7.ExerciseRemoteDataSource>()));
    gh.factory<_i9.HttpInterceptor>(() => _i9.HttpInterceptor());
    gh.lazySingleton<_i10.InternetConnectionChecker>(
      () => registerThirdPartyModules.dataConnectionChecker,
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i10.InternetConnectionChecker>(
      () => _i6.MockDataConnectionChecker(),
      registerFor: {_test},
    );
    gh.lazySingleton<_i11.LoadExercise>(
        () => _i11.LoadExercise(gh<_i4.ExerciseRepository>()));
    gh.lazySingleton<_i12.NetworkInfo>(
      () => _i12.NetworkInfoImpl(gh<_i10.InternetConnectionChecker>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i12.NetworkInfo>(
      () => _i12.MockNetworkInfo(),
      registerFor: {_test},
    );
    gh.factory<_i13.ExerciseCubit>(() => _i13.ExerciseCubit(
          loadExercise: gh<_i11.LoadExercise>(),
          changeExerciseStatus: gh<_i3.ChangeExerciseStatus>(),
        ));
    return this;
  }
}

class _$RegisterThirdPartyModules extends _i6.RegisterThirdPartyModules {}
