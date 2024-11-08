import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_template/util/locale/localization_keys.dart';
import 'package:flutter_template/util/locale/localization_overrides.dart';
import 'package:sprintf/sprintf.dart';

//============================================================//
//THIS FILE IS AUTO GENERATED. DO NOT EDIT//
//============================================================//

typedef LocaleFilter = bool Function(String languageCode);

class Localization {
  LocaleFilter? localeFilter;

  var _localisedValues = <String, dynamic>{};
  var _localisedOverrideValues = <String, dynamic>{};

  static Localization of(BuildContext context) =>
      Localizations.of<Localization>(context, Localization)!;

  /// The locale is used to get the correct json locale.
  /// It can later be used to check what the locale is that was used to load this Localization instance.
  final Locale? locale;

  Localization({required this.locale});

  static Future<Localization> load({
    required Locale locale,
    LocalizationOverrides? localizationOverrides,
    bool showLocalizationKeys = false,
    bool useCaching = true,
    AssetBundle? bundle,
  }) async {
    final localizations = Localization(locale: locale);
    if (showLocalizationKeys) {
      return localizations;
    }
    if (localizationOverrides != null) {
      final overrideLocalizations =
          await localizationOverrides.getOverriddenLocalizations(locale);
      localizations._localisedOverrideValues = overrideLocalizations;
    }
    final jsonContent = await (bundle ?? rootBundle).loadString(
        'assets/locale/${locale.toLanguageTag()}.json',
        cache: useCaching);
    localizations._localisedValues =
        json.decode(jsonContent) as Map<String, dynamic>;
    return localizations;
  }

  String _t(String key, {List<dynamic>? args}) {
    try {
      final value =
          (_localisedOverrideValues[key] ?? _localisedValues[key]) as String?;
      if (value == null) return key;
      if (args == null || args.isEmpty) return value;
      return sprintf(value, args);
    } catch (e) {
      return '⚠$key⚠';
    }
  }

  /// Translations:
  ///
  /// en:  **'Language changed successfully'**
  ///
  /// nl:  **'Language changed successfully'**
  String get debugChangeLangagueSuccess =>
      _t(LocalizationKeys.debugChangeLangagueSuccess);

  /// Translations:
  ///
  /// en:  **'Change language'**
  ///
  /// nl:  **'Taal veranderen'**
  String get debugChangeLanguageTitle =>
      _t(LocalizationKeys.debugChangeLanguageTitle);

  /// Translations:
  ///
  /// en:  **'Change platform'**
  ///
  /// nl:  **'Platform veranderen'**
  String get debugChangeTargetPlatform =>
      _t(LocalizationKeys.debugChangeTargetPlatform);

  /// Translations:
  ///
  /// en:  **'Platform changed successfully'**
  ///
  /// nl:  **'Platform changed successfully'**
  String get debugChangeTargetPlatformSuccess =>
      _t(LocalizationKeys.debugChangeTargetPlatformSuccess);

  /// Translations:
  ///
  /// en:  **'Change language'**
  ///
  /// nl:  **'Taal veranderen'**
  String get debugListItemChangeLangague =>
      _t(LocalizationKeys.debugListItemChangeLangague);

  /// Translations:
  ///
  /// en:  **'Change platform'**
  ///
  /// nl:  **'Platform veranderen'**
  String get debugListItemChangeTargetPlatform =>
      _t(LocalizationKeys.debugListItemChangeTargetPlatform);

  /// Translations:
  ///
  /// en:  **'Debug'**
  ///
  /// nl:  **'Debug'**
  String get debugTitle => _t(LocalizationKeys.debugTitle);

  /// Translations:
  ///
  /// en:  **'System language'**
  ///
  /// nl:  **'Taal van het systeem'**
  String get generalSystemLanguage =>
      _t(LocalizationKeys.generalSystemLanguage);

  /// Translations:
  ///
  /// en:  **'Android'**
  ///
  /// nl:  **'Android'**
  String get generalSystemTargetAndroid =>
      _t(LocalizationKeys.generalSystemTargetAndroid);

  /// Translations:
  ///
  /// en:  **'System'**
  ///
  /// nl:  **'Systeem'**
  String get generalSystemTargetDefault =>
      _t(LocalizationKeys.generalSystemTargetDefault);

  /// Translations:
  ///
  /// en:  **'iOS'**
  ///
  /// nl:  **'iOS'**
  String get generalSystemTargetIos =>
      _t(LocalizationKeys.generalSystemTargetIos);

  /// Translations:
  ///
  /// en:  **'You have pushed the button this many times:'**
  ///
  /// nl:  **'Je hebt zo veel keer op de knop gedrukt:'**
  String get homeBody => _t(LocalizationKeys.homeBody);

  /// Translations:
  ///
  /// en:  **'Flutter Template'**
  ///
  /// nl:  **'Flutter Template'**
  String get homeTitle => _t(LocalizationKeys.homeTitle);

  String getTranslation(String key, {List<dynamic>? args}) =>
      _t(key, args: args ?? <dynamic>[]);
}
