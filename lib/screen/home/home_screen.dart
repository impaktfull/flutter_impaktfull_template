import 'package:flutter/material.dart';
import 'package:flutter_navigation_generator_annotations/flutter_navigation_generator_annotations.dart';
import 'package:flutter_template/di/injectable.dart';
import 'package:flutter_template/viewmodel/home/home_viewmodel.dart';
import 'package:flutter_template/widget/provider/provider_widget.dart';

@FlutterRoute(
  navigationType: NavigationType.pushAndReplaceAll,
)
class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ProviderWidget<HomeViewmodel>(
      create: () => getIt()..init(),
      builderWithThemeAndLocalizations: (context, viewModel, theme, localization) => Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(
            localization.homeTitle,
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.developer_mode),
              onPressed: viewModel.onDebugMenuTapped,
            )
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                localization.homeBody,
              ),
              Text(
                viewModel.counterValue,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: viewModel.onIncrementTapped,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
