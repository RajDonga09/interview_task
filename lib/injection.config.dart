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
    as _i13;

import 'core/network/http_interceptor.dart' as _i12;
import 'core/network/network.dart' as _i8;
import 'core/network/network_info.dart' as _i16;
import 'injection.dart' as _i9;
import 'modules/animal/data/datasources/animals_remote_data_source.dart' as _i3;
import 'modules/animal/data/repositories/animals_repository_impl.dart' as _i5;
import 'modules/animal/domain/repositories/animals_repository.dart' as _i4;
import 'modules/animal/domain/usecases/load_animals.dart' as _i14;
import 'modules/animal/presentation/cubit/animal_cubit.dart' as _i17;
import 'modules/exercise/data/datasources/exercise_remote_data_source.dart'
    as _i10;
import 'modules/exercise/data/repositories/exercise_repository_impl.dart'
    as _i11;
import 'modules/exercise/domain/repositories/exercise_repository.dart' as _i7;
import 'modules/exercise/domain/usecases/change_exercise_status.dart' as _i6;
import 'modules/exercise/domain/usecases/load_exercise.dart' as _i15;
import 'modules/exercise/presentation/cubit/exercise_cubit.dart' as _i18;

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
    gh.lazySingleton<_i3.AnimalsRemoteDataSource>(
      () => _i3.AnimalsHostApiDataSource(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i4.AnimalsRepository>(
        () => _i5.AnimalsRepositoryImpl(gh<_i3.AnimalsRemoteDataSource>()));
    gh.lazySingleton<_i6.ChangeExerciseStatus>(
        () => _i6.ChangeExerciseStatus(gh<_i7.ExerciseRepository>()));
    gh.factory<_i8.Client>(
      () => registerThirdPartyModules.httpClient,
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i8.Client>(
      () => _i9.MockHttpClient(),
      registerFor: {_test},
    );
    gh.lazySingleton<_i10.ExerciseRemoteDataSource>(
      () => _i10.ExerciseHostApiDataSource(),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i7.ExerciseRepository>(
        () => _i11.ExerciseRepositoryImpl(gh<_i10.ExerciseRemoteDataSource>()));
    gh.factory<_i12.HttpInterceptor>(() => _i12.HttpInterceptor());
    gh.lazySingleton<_i13.InternetConnectionChecker>(
      () => registerThirdPartyModules.dataConnectionChecker,
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i13.InternetConnectionChecker>(
      () => _i9.MockDataConnectionChecker(),
      registerFor: {_test},
    );
    gh.lazySingleton<_i14.LoadAnimals>(
        () => _i14.LoadAnimals(gh<_i4.AnimalsRepository>()));
    gh.lazySingleton<_i15.LoadExercise>(
        () => _i15.LoadExercise(gh<_i7.ExerciseRepository>()));
    gh.lazySingleton<_i16.NetworkInfo>(
      () => _i16.NetworkInfoImpl(gh<_i13.InternetConnectionChecker>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.lazySingleton<_i16.NetworkInfo>(
      () => _i16.MockNetworkInfo(),
      registerFor: {_test},
    );
    gh.factory<_i17.AnimalsCubit>(
        () => _i17.AnimalsCubit(loadAnimals: gh<_i14.LoadAnimals>()));
    gh.factory<_i18.ExerciseCubit>(() => _i18.ExerciseCubit(
          loadExercise: gh<_i15.LoadExercise>(),
          changeExerciseStatus: gh<_i6.ChangeExerciseStatus>(),
        ));
    return this;
  }
}

class _$RegisterThirdPartyModules extends _i9.RegisterThirdPartyModules {}
