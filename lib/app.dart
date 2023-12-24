import 'package:flutter/material.dart';
import 'package:flutter_template/di/injectable.dart';
import 'package:flutter_template/navigator/main_navigator.dart';
import 'package:flutter_template/navigator/main_navigator.navigator.dart';

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final mainNavigator = getIt<MainNavigator>();
    return MaterialApp(
      title: 'Flutter Template',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      navigatorKey: mainNavigator.navigatorKey,
      initialRoute: RouteNames.splashScreen,
      onGenerateRoute: mainNavigator.onGenerateRoute,
    );
  }
}
