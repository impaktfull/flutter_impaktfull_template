// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// FlutterNavigatorGenerator
// **************************************************************************

// ignore_for_file: prefer_const_constructors

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:impaktfull_architecture/impaktfull_architecture.dart' as _i1;
import 'package:impaktfull_architecture/impaktfull_architecture.dart';

import '../screen/debug/debug_change_language_screen.dart';
import '../screen/debug/debug_change_target_platform_screen.dart';
import '../screen/debug/debug_screen.dart';
import '../screen/home/home_screen.dart';
import '../screen/splash/splash_screen.dart';

mixin BaseNavigator {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    final arguments = settings.arguments is Map
        ? (settings.arguments as Map).cast<String, dynamic>()
        : <String, dynamic>{};
    final settingsUri = Uri.parse(settings.name ?? '');
    settingsUri.queryParameters.forEach((key, value) {
      arguments[key] ??= value;
    });
    switch (settingsUri.path) {
      case RouteNames.homeScreen:
        return FadeInRoute<void>(
          builder: (_) => HomeScreen(
            key: arguments['key'] as Key?,
          ),
          settings: settings,
          fullscreenDialog: false,
        );
      case RouteNames.splashScreen:
        return MaterialPageRoute<void>(
          builder: (_) => SplashScreen(
            key: arguments['key'] as Key?,
          ),
          settings: settings,
          fullscreenDialog: false,
        );
      case RouteNames.debugChangeTargetPlatformScreen:
        return MaterialPageRoute<void>(
          builder: (_) => DebugChangeTargetPlatformScreen(
            key: arguments['key'] as Key?,
          ),
          settings: settings,
          fullscreenDialog: false,
        );
      case RouteNames.debugChangeLanguageScreen:
        return MaterialPageRoute<void>(
          builder: (_) => DebugChangeLanguageScreen(
            key: arguments['key'] as Key?,
          ),
          settings: settings,
          fullscreenDialog: false,
        );
      case RouteNames.debugScreen:
        return MaterialPageRoute<void>(
          builder: (_) => DebugScreen(
            key: arguments['key'] as Key?,
          ),
          settings: settings,
          fullscreenDialog: false,
        );
    }
    return null;
  }

  void goToHomeScreen({_i1.Key? key}) =>
      navigatorKey.currentState?.pushNamedAndRemoveUntil<dynamic>(
        RouteNames.homeScreen,
        (_) => false,
        arguments: {'key': key},
      );
  Future<void> goToSplashScreen({_i1.Key? key}) async =>
      navigatorKey.currentState?.pushNamed<dynamic>(
        RouteNames.splashScreen,
        arguments: {'key': key},
      );
  Future<void> goToDebugChangeTargetPlatformScreen({_i1.Key? key}) async =>
      navigatorKey.currentState?.pushNamed<dynamic>(
        RouteNames.debugChangeTargetPlatformScreen,
        arguments: {'key': key},
      );
  Future<void> goToDebugChangeLanguageScreen({_i1.Key? key}) async =>
      navigatorKey.currentState?.pushNamed<dynamic>(
        RouteNames.debugChangeLanguageScreen,
        arguments: {'key': key},
      );
  Future<void> goToDebugScreen({_i1.Key? key}) async =>
      navigatorKey.currentState?.pushNamed<dynamic>(
        RouteNames.debugScreen,
        arguments: {'key': key},
      );
  void goBack() => navigatorKey.currentState?.pop();
  void goBackWithResult<T>({T? result}) =>
      navigatorKey.currentState?.pop(result);
  void popUntil(bool Function(Route<dynamic>) predicate) =>
      navigatorKey.currentState?.popUntil(predicate);
  void goBackTo(String routeName) =>
      popUntil((route) => route.settings.name == routeName);
  Future<T?> showCustomDialog<T>({Widget? widget}) async => showDialog<T>(
        context: navigatorKey.currentContext!,
        builder: (_) => widget ?? const SizedBox.shrink(),
      );
  Future<T?> showBottomSheet<T>({Widget? widget}) async =>
      showModalBottomSheet<T>(
        context: navigatorKey.currentContext!,
        builder: (_) => widget ?? const SizedBox.shrink(),
      );
}

class RouteNames {
  /// /home
  static const homeScreen = '/home';

  /// /splash
  static const splashScreen = '/splash';

  /// /debug-change-target-platform
  static const debugChangeTargetPlatformScreen =
      '/debug-change-target-platform';

  /// /debug-change-language
  static const debugChangeLanguageScreen = '/debug-change-language';

  /// /debug
  static const debugScreen = '/debug';
}
