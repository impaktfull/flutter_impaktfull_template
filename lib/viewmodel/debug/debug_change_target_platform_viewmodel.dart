import 'package:flutter_template/navigator/main_navigator.dart';
import 'package:flutter_template/util/locale/localization.dart';
import 'package:flutter_template/viewmodel/global/global_viewmodel.dart';
import 'package:impaktfull_architecture/impaktfull_architecture.dart';

@injectable
class DebugChangeTargetPlatformViewModel extends ChangeNotifierEx {
  final GlobalViewModel _globalViewModel;
  final MainNavigator _mainNavigator;

  TargetPlatform? get targetPlatform => _globalViewModel.targetPlatform;

  DebugChangeTargetPlatformViewModel(
    this._globalViewModel,
    this._mainNavigator,
  );

  List<TargetPlatform?> get supportedTargetPlatforms => [
        null,
        TargetPlatform.android,
        TargetPlatform.iOS,
      ];

  Future<void> init() async {}

  Future<void> onLocaleTapped(TargetPlatform? targetPlatform) async {
    _globalViewModel.setTargetPlatform(targetPlatform);
    notifyListeners();
    _mainNavigator.showSuccessNotificationWithLocalization(
      title: (localization) => localization.debugChangeTargetPlatformSuccess,
    );
  }

  bool isTargetPlatformSelected(TargetPlatform? targetPlatform) =>
      _globalViewModel.targetPlatform == targetPlatform;

  void onBackTapped() => _mainNavigator.goBack();

  String getTranslation(TargetPlatform? item, Localization localization) {
    switch (item) {
      case TargetPlatform.android:
        return localization.generalSystemTargetAndroid;
      case TargetPlatform.iOS:
        return localization.generalSystemTargetIos;
      default:
        return localization.generalSystemTargetDefault;
    }
  }
}
