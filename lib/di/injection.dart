import 'package:app_settings/di/injection.dart';
import 'package:datastore/di/injection.dart';
import 'package:flutter_multi_modular/di/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies(String? environment) {
  getIt.init(environment: environment);
  configureAppSettingsDependencies(getIt, environment);
  configureDataStoreDependencies(getIt, environment);
}
