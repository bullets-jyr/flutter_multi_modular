import 'package:data/di/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@InjectableInit()
Future<void> configureDataDependencies(GetIt getIt, String? environment) async =>
    getIt.init(environment: environment);
