// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app_settings/provider/app_settings_provider.dart' as _i362;
import 'package:app_settings/provider/app_settings_provider_impl.dart' as _i94;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

const String _dev = 'dev';
const String _prod = 'prod';

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i362.AppSettingsProvider>(
      () => _i94.DevAppSettingsProviderImpl(),
      registerFor: {_dev},
    );
    gh.factory<_i362.AppSettingsProvider>(
      () => _i94.ProdAppSettingsProviderImpl(),
      registerFor: {_prod},
    );
    return this;
  }
}
