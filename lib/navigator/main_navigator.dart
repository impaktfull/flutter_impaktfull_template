import 'package:flutter_navigation_generator_annotations/flutter_navigation_generator_annotations.dart';
import 'package:flutter_template/navigator/error_navigator.dart';
import 'package:flutter_template/navigator/main_navigator.navigator.dart';
import 'package:flutter_template/navigator/notification_navigator.dart';
import 'package:flutter_template/util/locale/localization.dart';
import 'package:impaktfull_architecture/impaktfull_architecture.dart';

@lazySingleton
@flutterNavigator
class MainNavigator with BaseNavigator, ErrorNavigator, NotificationNavigator {
  @protected
  @override
  Localization get localization =>
      Localization.of(navigatorKey.currentContext!);
}
