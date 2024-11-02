import 'package:impaktfull_ui_2/impaktfull_ui.dart';

mixin ErrorNavigator {
  void showError({
    required Object error,
    required StackTrace trace,
    bool logToCrashReporting = true,
  }) {
    final title = error.toString();
    ImpaktfullUiNotification.show(
      title: title,
      cancelAll: true,
      type: ImpaktfullUiNotificationType.error,
    );
  }
}
