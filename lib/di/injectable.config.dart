// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_template/di/injectable.dart' as _i13;
import 'package:flutter_template/navigator/main_navigator.dart' as _i6;
import 'package:flutter_template/repo/locale/locale_repository.dart' as _i5;
import 'package:flutter_template/viewmodel/debug/debug_change_language_viewmodel.dart'
    as _i9;
import 'package:flutter_template/viewmodel/debug/debug_change_target_platform_viewmodel.dart'
    as _i10;
import 'package:flutter_template/viewmodel/debug/debug_viewmodel.dart' as _i11;
import 'package:flutter_template/viewmodel/global/global_viewmodel.dart' as _i4;
import 'package:flutter_template/viewmodel/global/translations_viewmodel.dart'
    as _i8;
import 'package:flutter_template/viewmodel/home/home_viewmodel.dart' as _i12;
import 'package:flutter_template/viewmodel/splash/splash_viewmodel.dart' as _i7;
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
    gh.lazySingleton<_i5.LocaleRepository>(
        () => _i5.LocaleRepository(gh<_i3.SharedPrefsStore>()));
    gh.lazySingleton<_i6.MainNavigator>(() => _i6.MainNavigator());
    gh.factory<_i7.SplashViewmodel>(
        () => _i7.SplashViewmodel(gh<_i6.MainNavigator>()));
    gh.lazySingleton<_i8.TranslationsViewmodel>(
        () => _i8.TranslationsViewmodel(gh<_i5.LocaleRepository>()));
    gh.factory<_i9.DebugChangeLanguageViewModel>(
        () => _i9.DebugChangeLanguageViewModel(
              gh<_i8.TranslationsViewmodel>(),
              gh<_i6.MainNavigator>(),
            ));
    gh.factory<_i10.DebugChangeTargetPlatformViewModel>(
        () => _i10.DebugChangeTargetPlatformViewModel(
              gh<_i4.GlobalViewModel>(),
              gh<_i6.MainNavigator>(),
            ));
    gh.factory<_i11.DebugViewModel>(() => _i11.DebugViewModel(
          gh<_i4.GlobalViewModel>(),
          gh<_i8.TranslationsViewmodel>(),
          gh<_i6.MainNavigator>(),
        ));
    gh.factory<_i12.HomeViewmodel>(
        () => _i12.HomeViewmodel(gh<_i6.MainNavigator>()));
    return this;
  }
}

class _$RegisterModule extends _i13.RegisterModule {}
