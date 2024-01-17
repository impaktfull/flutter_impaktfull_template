import 'package:flutter/material.dart';
import 'package:flutter_navigation_generator_annotations/flutter_navigation_generator_annotations.dart';
import 'package:flutter_template/di/injectable.dart';
import 'package:flutter_template/viewmodel/home/home_viewmodel.dart';
import 'package:flutter_template/widget/provider/provider_widget.dart';
import 'package:flutter_template/widget/screen/simple_screen.dart';
import 'package:impaktfull_architecture/impaktfull_architecture.dart';

@FlutterRoute(
  navigationType: NavigationType.pushAndReplaceAll,
  pageType: FadeInRoute,
)
class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ProviderWidget<HomeViewmodel>(
      create: () => getIt()..init(),
      builderWithThemeAndLocalizations: (context, viewModel, theme, localization) => SimpleScreen(
        title: localization.homeTitle,
        actions: [
          IconButton(
            icon: const Icon(Icons.developer_mode),
            onPressed: viewModel.onDebugMenuTapped,
          ),
        ],
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    localization.homeBody,
                    style: theme.textStyles.primary.body,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    viewModel.counterValue,
                    style: theme.textStyles.primary.title,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).padding.bottom + 16,
              right: MediaQuery.of(context).padding.right + 16,
              child: FloatingActionButton(
                onPressed: viewModel.onIncrementTapped,
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
