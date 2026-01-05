import 'package:datastore/di/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@InjectableInit()
Future<void> configureDataDependencies(GetIt getIt, String? environment) =>
    getIt.init(environment: environment);
