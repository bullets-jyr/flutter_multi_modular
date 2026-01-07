import 'package:data/network_info/network_info.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movies/data/remote/movies_remote_data_source.dart';
import 'package:movies/data/remote/movies_remote_data_source_impl.dart';
import 'package:movies/data/repository/movies_repository_impl.dart';
import 'package:movies/data/service/movies_service.dart';
import 'package:movies/domain/repository/movies_repository.dart';
import 'package:movies/domain/use_case/movies_use_case.dart';

@module
abstract class MoviesModule {
  @lazySingleton
  MoviesService provideMoviesService(Dio dio) {
    return MoviesService(dio);
  }

  @lazySingleton
  MoviesRemoteDataSource provideMoviesRemoteDataSource(
    MoviesService moviesService,
    NetworkInfo networkInfo,
  ) {
    return MoviesRemoteDataSourceImpl(moviesService, networkInfo);
  }

  @lazySingleton
  MoviesRepository provideMoviesRepository(
    MoviesRemoteDataSource moviesRemoteDataSource,
  ) {
    return MoviesRepositoryImpl(moviesRemoteDataSource);
  }

  @lazySingleton
  MoviesUseCase provideMoviesUseCase(MoviesRepository moviesRepository) {
    return MoviesUseCase(moviesRepository);
  }
}
