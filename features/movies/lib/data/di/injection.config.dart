// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:data/network_info/network_info.dart' as _i131;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:hive_ce/hive_ce.dart' as _i1055;
import 'package:injectable/injectable.dart' as _i526;
import 'package:movies/data/data_source/cache/movies_local_data_source.dart'
    as _i476;
import 'package:movies/data/data_source/remote/movies_remote_data_source.dart'
    as _i59;
import 'package:movies/data/di/movies_module.dart' as _i442;
import 'package:movies/data/service/movies_service.dart' as _i809;
import 'package:movies/domain/repository/movies_repository.dart' as _i591;
import 'package:movies/domain/use_case/movies_use_case.dart' as _i657;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final moviesModule = _$MoviesModule();
    await gh.factoryAsync<_i1055.Box<dynamic>>(
      () => moviesModule.provideMoviesBox(),
      preResolve: true,
    );
    gh.lazySingleton<_i809.MoviesService>(
      () => moviesModule.provideMoviesService(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i476.MoviesLocalDataSource>(
      () =>
          moviesModule.provideMoviesLocalDataSource(gh<_i1055.Box<dynamic>>()),
    );
    gh.lazySingleton<_i59.MoviesRemoteDataSource>(
      () => moviesModule.provideMoviesRemoteDataSource(
        gh<_i809.MoviesService>(),
        gh<_i131.NetworkInfo>(),
      ),
    );
    gh.lazySingleton<_i591.MoviesRepository>(
      () => moviesModule.provideMoviesRepository(
        gh<_i59.MoviesRemoteDataSource>(),
        gh<_i476.MoviesLocalDataSource>(),
      ),
    );
    gh.lazySingleton<_i657.MoviesUseCase>(
      () => moviesModule.provideMoviesUseCase(gh<_i591.MoviesRepository>()),
    );
    return this;
  }
}

class _$MoviesModule extends _i442.MoviesModule {}
