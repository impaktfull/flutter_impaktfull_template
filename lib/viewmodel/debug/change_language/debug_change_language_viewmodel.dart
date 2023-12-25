import 'package:flutter/material.dart';
import 'package:flutter_template/util/locale/localization.dart';
import 'package:flutter_template/viewmodel/global/translations_viewmodel.dart';
import 'package:impaktfull_architecture/impaktfull_architecture.dart';

@injectable
class DebugChangeLanguageViewModel extends ChangeNotifierEx {
  final TranslationsViewmodel translationsViewmodel;

  List<Locale> get supportedLocales => [
        ...translationsViewmodel.supportedLocales,
      ];

  DebugChangeLanguageViewModel(
    this.translationsViewmodel,
  );

  Future<void> init() async {}

  String getTranslatedLocale(
    Locale? locale,
    Localization localization,
  ) =>
      translationsViewmodel.getTranslatedLocale(locale, localization);

  Future<void> onLocaleTapped(Locale? locale) async {
    await translationsViewmodel.switchToLocale(locale);
    notifyListeners();
  }

  bool isLocaleSelected(Locale? locale) => translationsViewmodel.isLocaleSelected(locale);
}
