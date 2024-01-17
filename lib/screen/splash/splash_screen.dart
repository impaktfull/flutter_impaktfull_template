import 'package:flutter/material.dart';
import 'package:flutter_navigation_generator_annotations/flutter_navigation_generator_annotations.dart';
import 'package:flutter_template/di/injectable.dart';
import 'package:flutter_template/viewmodel/splash/splash_viewmodel.dart';
import 'package:flutter_template/widget/general/loading/loading_indicator.dart';
import 'package:flutter_template/widget/provider/provider_widget.dart';

@flutterRoute
class SplashScreen extends StatelessWidget {
  const SplashScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ProviderWidget<SplashViewmodel>(
      create: () => getIt()..init(),
      builderWithThemeAndLocalizations: (context, viewModel, theme, localization) => Scaffold(
        backgroundColor: theme.colors.primary,
        body: const Center(
          child: LoadingIndicator(),
        ),
      ),
    );
  }
}
