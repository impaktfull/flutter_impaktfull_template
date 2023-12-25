import 'package:flutter/material.dart';
import 'package:flutter_template/navigator/main_navigator.navigator.dart';
import 'package:flutter_template/theme/theme.dart';
import 'package:flutter_template/widget/di/dependency_tree.dart';

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DependencyTreeWidget(
      builder: (context, globalViewModel, translationsViewmodel, mainNavigator) => MaterialApp(
        theme: AppTheme.lightTheme(globalViewModel.targetPlatform),
        darkTheme: AppTheme.darkTheme(globalViewModel.targetPlatform),
        locale: translationsViewmodel.locale,
        supportedLocales: translationsViewmodel.supportedLocales,
        localizationsDelegates: translationsViewmodel.localizationDelegates,
        navigatorKey: mainNavigator.navigatorKey,
        initialRoute: RouteNames.splashScreen,
        onGenerateRoute: mainNavigator.onGenerateRoute,
      ),
    );
  }
}
