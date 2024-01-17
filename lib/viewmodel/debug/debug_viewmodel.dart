import 'package:flutter_template/navigator/main_navigator.dart';
import 'package:flutter_template/util/locale/localization.dart';
import 'package:flutter_template/viewmodel/global/translations_viewmodel.dart';
import 'package:impaktfull_architecture/impaktfull_architecture.dart';

@injectable
class DebugViewModel extends ChangeNotifierEx {
  final MainNavigator _mainNavigator;
  final TranslationsViewmodel _translationsViewmodel;

  DebugViewModel(
    this._mainNavigator,
    this._translationsViewmodel,
  );

  Future<void> init() async {}

  String getCurrentLanguage(Localization localization) => _translationsViewmodel.getCurrentLanguage(localization);

  void onChangeLanguageTapped() => _mainNavigator.goToDebugChangeLanguageScreen();

  void onBackTapped() => _mainNavigator.goBack();
}
