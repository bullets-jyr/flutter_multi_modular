import 'package:app_settings/di/injection.dart';
import 'package:data/di/injection.dart';
import 'package:datastore/di/injection.dart';
import 'package:flutter_multi_modular/di/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:login/data/di/injection.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies(String? environment) async {
  await configureAppSettingsDependencies(getIt, environment);
  await configureDataStoreDependencies(getIt, environment);
  await configureDataDependencies(getIt, environment);
  await configureLoginDependencies(getIt, environment);
  getIt.init(environment: environment);
}
