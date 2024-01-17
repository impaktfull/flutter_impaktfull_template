import 'package:flutter/material.dart';
import 'package:flutter_navigation_generator_annotations/flutter_navigation_generator_annotations.dart';
import 'package:flutter_template/di/injectable.dart';
import 'package:flutter_template/viewmodel/debug/debug_viewmodel.dart';
import 'package:flutter_template/widget/debug/debug_list_item.dart';
import 'package:flutter_template/widget/provider/provider_widget.dart';
import 'package:flutter_template/widget/screen/simple_screen.dart';

@flutterRoute
class DebugScreen extends StatelessWidget {
  const DebugScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ProviderWidget<DebugViewModel>(
      create: () => getIt()..init(),
      builderWithThemeAndLocalizations: (context, viewModel, theme, localization) => SimpleScreen(
        onBackTapped: viewModel.onBackTapped,
        title: localization.debugTitle,
        child: ListView(
          children: [
            DebugListItem(
              title: localization.debugListItemChangeLangague,
              subtitle: viewModel.getCurrentLanguage(localization),
              onTap: viewModel.onChangeLanguageTapped,
            ),
          ],
        ),
      ),
    );
  }
}
