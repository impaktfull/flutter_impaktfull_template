import 'package:flutter_template/navigator/main_navigator.dart';
import 'package:flutter_template/util/locale/localization.dart';
import 'package:flutter_template/viewmodel/global/translations_viewmodel.dart';
import 'package:impaktfull_architecture/impaktfull_architecture.dart';

@injectable
class DebugChangeLanguageViewModel extends ChangeNotifierEx {
  final TranslationsViewmodel _translationsViewmodel;
  final MainNavigator _mainNavigator;

  List<Locale> get supportedLocales => [
        ..._translationsViewmodel.supportedLocales,
      ];

  DebugChangeLanguageViewModel(
    this._translationsViewmodel,
    this._mainNavigator,
  );

  Future<void> init() async {}

  String getTranslatedLocale(
    Locale? locale,
    Localization localization,
  ) =>
      _translationsViewmodel.getTranslatedLocale(locale, localization);

  Future<void> onLocaleTapped(Locale? locale) async {
    await _translationsViewmodel.switchToLocale(locale);
    notifyListeners();
    await Future.delayed(const Duration(milliseconds: 100));
    _mainNavigator.showSuccessNotificationWithLocalization(
      title: (localization) => localization.debugChangeLangagueSuccess,
    );
  }

  bool isLocaleSelected(Locale? locale) =>
      _translationsViewmodel.isLocaleSelected(locale);

  void onBackTapped() => _mainNavigator.goBack();
}
