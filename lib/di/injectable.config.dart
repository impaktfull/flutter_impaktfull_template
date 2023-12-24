// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_template/di/injectable.dart' as _i8;
import 'package:flutter_template/navigator/main_navigator.dart' as _i6;
import 'package:flutter_template/viewmodel/global_viewmodel.dart' as _i4;
import 'package:flutter_template/viewmodel/home_viewmodel.dart' as _i5;
import 'package:flutter_template/viewmodel/splash_viewmodel.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:impaktfull_architecture/impaktfull_architecture.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt initGetIt({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.Dio>(() => registerModule.provideDio());
    gh.lazySingleton<_i4.GlobalViewModel>(() => _i4.GlobalViewModel());
    gh.factory<_i5.HomeViewmodel>(() => _i5.HomeViewmodel());
    gh.lazySingleton<_i6.MainNavigator>(() => _i6.MainNavigator());
    gh.factory<_i7.SplashViewmodel>(
        () => _i7.SplashViewmodel(gh<_i6.MainNavigator>()));
    return this;
  }
}

class _$RegisterModule extends _i8.RegisterModule {}
