import 'package:flutter_template/navigator/main_navigator.navigator.dart';
import 'package:flutter_template/theme/app_theme.dart';
import 'package:flutter_template/widget/debug/flavor_flag.dart';
import 'package:flutter_template/widget/di/dependency_tree.dart';
import 'package:impaktfull_architecture/impaktfull_architecture.dart';
import 'package:impaktfull_ui_2/impaktfull_ui.dart';

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DependencyTreeWidget(
      builder:
          (context, globalViewModel, translationsViewmodel, mainNavigator) =>
              FlavorBanner(
        child: ImpaktfullUiApp(
          title: 'impaktfull Flutter Template',
          impaktfullUiTheme: AppTheme.getTheme(),
          locale: translationsViewmodel.locale,
          targetPlatform: globalViewModel.targetPlatform,
          supportedLocales: translationsViewmodel.supportedLocales,
          localizationsDelegates: translationsViewmodel.localizationDelegates,
          navigatorKey: mainNavigator.navigatorKey,
          initialRoute: RouteNames.splashScreen,
          onGenerateRoute: mainNavigator.onGenerateRoute,
        ),
      ),
    );
  }
}
