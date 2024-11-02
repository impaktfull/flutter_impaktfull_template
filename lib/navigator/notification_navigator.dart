import 'package:flutter/foundation.dart';
import 'package:flutter_template/util/locale/localization.dart';
import 'package:impaktfull_ui_2/impaktfull_ui.dart';

mixin NotificationNavigator {
  @protected
  Localization get localization;

  void showSuccessNotificationWithLocalization({
    required String Function(Localization) title,
    String Function(Localization)? subtitle,
  }) {
    showSuccessNotification(
      title: title(localization),
      subtitle: subtitle?.call(localization),
    );
  }

  void showErrorNotificationWithLocalization({
    required String Function(Localization) title,
    String Function(Localization)? subtitle,
  }) {
    showErrorNotification(
      title: title(localization),
      subtitle: subtitle?.call(localization),
    );
  }

  void showWarningNotificationWithLocalization({
    required String Function(Localization) title,
    String Function(Localization)? subtitle,
  }) {
    showWarningNotification(
      title: title(localization),
      subtitle: subtitle?.call(localization),
    );
  }

  void showInfoNotificationWithLocalization({
    required String Function(Localization) title,
    String Function(Localization)? subtitle,
  }) {
    showInfoNotification(
      title: title(localization),
      subtitle: subtitle?.call(localization),
    );
  }

  void showBrandedNotificationWithLocalization({
    required String Function(Localization) title,
    String Function(Localization)? subtitle,
  }) {
    showBrandedNotification(
      title: title(localization),
      subtitle: subtitle?.call(localization),
    );
  }

  void showSuccessNotification({
    required String title,
    String? subtitle,
    bool cancelActive = false,
    bool cancelAll = true,
  }) =>
      ImpaktfullUiNotification.show(
        title: title,
        subtitle: subtitle,
        cancelActive: cancelActive,
        cancelAll: cancelAll,
        type: ImpaktfullUiNotificationType.success,
      );

  void showErrorNotification({
    required String title,
    String? subtitle,
    bool cancelActive = false,
    bool cancelAll = true,
  }) =>
      ImpaktfullUiNotification.show(
        title: localization.getTranslation(title),
        subtitle:
            subtitle == null ? null : localization.getTranslation(subtitle),
        cancelActive: cancelActive,
        cancelAll: cancelAll,
        type: ImpaktfullUiNotificationType.error,
      );

  void showWarningNotification({
    required String title,
    String? subtitle,
    bool cancelActive = false,
    bool cancelAll = true,
  }) =>
      ImpaktfullUiNotification.show(
        title: localization.getTranslation(title),
        subtitle:
            subtitle == null ? null : localization.getTranslation(subtitle),
        cancelActive: cancelActive,
        cancelAll: cancelAll,
        type: ImpaktfullUiNotificationType.warning,
      );

  void showInfoNotification({
    required String title,
    String? subtitle,
    bool cancelActive = false,
    bool cancelAll = true,
  }) =>
      ImpaktfullUiNotification.show(
        title: localization.getTranslation(title),
        subtitle:
            subtitle == null ? null : localization.getTranslation(subtitle),
        cancelActive: cancelActive,
        cancelAll: cancelAll,
        type: ImpaktfullUiNotificationType.info,
      );

  void showBrandedNotification({
    required String title,
    String? subtitle,
    bool cancelActive = false,
    bool cancelAll = true,
  }) =>
      ImpaktfullUiNotification.show(
        title: localization.getTranslation(title),
        subtitle:
            subtitle == null ? null : localization.getTranslation(subtitle),
        cancelActive: cancelActive,
        cancelAll: cancelAll,
        type: ImpaktfullUiNotificationType.branded,
      );
}
