import 'package:flutter/material.dart';
import 'package:flutter_navigation_generator_annotations/flutter_navigation_generator_annotations.dart';
import 'package:flutter_template/di/injectable.dart';
import 'package:flutter_template/viewmodel/debug/change_language/debug_change_language_viewmodel.dart';
import 'package:flutter_template/widget/debug/debug_list_item.dart';
import 'package:flutter_template/widget/provider/provider_widget.dart';

@flutterRoute
class DebugChangeLanguageScreen extends StatelessWidget {
  const DebugChangeLanguageScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ProviderWidget<DebugChangeLanguageViewModel>(
      create: () => getIt()..init(),
      builderWithThemeAndLocalizations: (context, viewModel, theme, localization) => Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(
            localization.debugChangeLanguageTitle,
          ),
        ),
        body: ListView.builder(
          itemCount: viewModel.supportedLocales.length,
          itemBuilder: (context, index) {
            final locale = viewModel.supportedLocales[index];
            return DebugListItem(
              title: viewModel.getTranslatedLocale(locale, localization),
              onTap: () => viewModel.onLocaleTapped(locale),
              trailing: viewModel.isLocaleSelected(locale)
                  ? const Icon(
                      Icons.check,
                      size: 16,
                    )
                  : null,
            );
          },
        ),
      ),
    );
  }
}
