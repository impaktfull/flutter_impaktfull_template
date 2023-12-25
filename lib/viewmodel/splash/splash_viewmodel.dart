import 'dart:async';

import 'package:flutter_template/navigator/main_navigator.dart';
import 'package:impaktfull_architecture/impaktfull_architecture.dart';

@injectable
class SplashViewmodel extends ChangeNotifierEx {
  final MainNavigator mainNavigator;

  SplashViewmodel(
    this.mainNavigator,
  );

  Future<void> init() async {
    await Future.delayed(const Duration(seconds: 2));
    mainNavigator.goToHomeScreen();
  }
}
