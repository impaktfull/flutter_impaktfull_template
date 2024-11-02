// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_template/di/injectable.dart' as _i480;
import 'package:flutter_template/navigator/main_navigator.dart' as _i861;
import 'package:flutter_template/repo/locale/locale_repository.dart' as _i296;
import 'package:flutter_template/viewmodel/debug/debug_change_language_viewmodel.dart'
    as _i533;
import 'package:flutter_template/viewmodel/debug/debug_change_target_platform_viewmodel.dart'
    as _i303;
import 'package:flutter_template/viewmodel/debug/debug_viewmodel.dart' as _i317;
import 'package:flutter_template/viewmodel/global/global_viewmodel.dart'
    as _i836;
import 'package:flutter_template/viewmodel/global/translations_viewmodel.dart'
    as _i644;
import 'package:flutter_template/viewmodel/home/home_viewmodel.dart' as _i896;
import 'package:flutter_template/viewmodel/splash/splash_viewmodel.dart'
    as _i532;
import 'package:get_it/get_it.dart' as _i174;
import 'package:impaktfull_architecture/impaktfull_architecture.dart' as _i471;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initGetIt({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i836.GlobalViewModel>(() => _i836.GlobalViewModel());
    gh.lazySingleton<_i471.Dio>(() => registerModule.provideDio());
    gh.lazySingleton<_i861.MainNavigator>(() => _i861.MainNavigator());
    gh.factory<_i303.DebugChangeTargetPlatformViewModel>(
        () => _i303.DebugChangeTargetPlatformViewModel(
              gh<_i836.GlobalViewModel>(),
              gh<_i861.MainNavigator>(),
            ));
    gh.lazySingleton<_i296.LocaleRepository>(
        () => _i296.LocaleRepository(gh<_i471.SharedPrefsStore>()));
    gh.factory<_i532.SplashViewmodel>(
        () => _i532.SplashViewmodel(gh<_i861.MainNavigator>()));
    gh.lazySingleton<_i644.TranslationsViewmodel>(
        () => _i644.TranslationsViewmodel(gh<_i296.LocaleRepository>()));
    gh.factory<_i896.HomeViewmodel>(
        () => _i896.HomeViewmodel(gh<_i861.MainNavigator>()));
    gh.factory<_i533.DebugChangeLanguageViewModel>(
        () => _i533.DebugChangeLanguageViewModel(
              gh<_i644.TranslationsViewmodel>(),
              gh<_i861.MainNavigator>(),
            ));
    gh.factory<_i317.DebugViewModel>(() => _i317.DebugViewModel(
          gh<_i836.GlobalViewModel>(),
          gh<_i644.TranslationsViewmodel>(),
          gh<_i861.MainNavigator>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i480.RegisterModule {}
