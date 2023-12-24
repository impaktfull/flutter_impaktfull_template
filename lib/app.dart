import 'package:flutter/material.dart';
import 'package:flutter_template/di/injectable.dart';
import 'package:flutter_template/navigator/main_navigator.dart';
import 'package:flutter_template/navigator/main_navigator.navigator.dart';
import 'package:flutter_template/theme/theme.dart';
import 'package:flutter_template/viewmodel/global_viewmodel.dart';
import 'package:impaktfull_architecture/impaktfull_architecture.dart';

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final mainNavigator = getIt<MainNavigator>();
    return ProviderWidget<GlobalViewModel>(
      create: () => getIt()..init(),
      builder: (context, viewModel) => MaterialApp(
        title: 'Flutter Template',
        theme: AppTheme.lightTheme(viewModel.targetPlatform),
        darkTheme: AppTheme.darkTheme(viewModel.targetPlatform),
        navigatorKey: mainNavigator.navigatorKey,
        initialRoute: RouteNames.splashScreen,
        onGenerateRoute: mainNavigator.onGenerateRoute,
      ),
    );
  }
}
