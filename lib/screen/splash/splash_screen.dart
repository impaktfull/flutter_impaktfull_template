import 'package:flutter_navigation_generator_annotations/flutter_navigation_generator_annotations.dart';
import 'package:flutter_template/di/injectable.dart';
import 'package:flutter_template/viewmodel/splash/splash_viewmodel.dart';
import 'package:flutter_template/widget/provider/provider_widget.dart';
import 'package:impaktfull_architecture/impaktfull_architecture.dart';
import 'package:impaktfull_ui_2/impaktfull_ui.dart';

@flutterRoute
class SplashScreen extends StatelessWidget {
  const SplashScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ProviderWidget<SplashViewmodel>(
      create: () => getIt()..init(),
      builderWithThemeAndLocalizations:
          (context, viewModel, theme, localization) => Scaffold(
        backgroundColor: theme.colors.primary,
        body: const Center(
          child: ImpaktfullUiLoadingIndicator(),
        ),
      ),
    );
  }
}
