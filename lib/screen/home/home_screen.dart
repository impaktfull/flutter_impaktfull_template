import 'package:flutter_navigation_generator_annotations/flutter_navigation_generator_annotations.dart';
import 'package:flutter_template/di/injectable.dart';
import 'package:flutter_template/viewmodel/home/home_viewmodel.dart';
import 'package:flutter_template/widget/provider/provider_widget.dart';
import 'package:impaktfull_architecture/impaktfull_architecture.dart';
import 'package:impaktfull_ui_2/impaktfull_ui.dart';

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
      builderWithThemeAndLocalizations:
          (context, viewModel, theme, localization) => ImpaktfullUiScreen(
        title: localization.homeTitle,
        fab: ImpaktfullUiFloatingActionButton(
          onTap: viewModel.onIncrementTapped,
          asset: theme.assets.icons.add,
        ),
        actions: [
          ImpaktfullUiAdaptiveNavBarActionItem(
            onTap: viewModel.onDebugMenuTapped,
            title: 'Debug',
            asset: const ImpaktfullUiAsset.icon(Icons.developer_mode),
          ).small(),
        ],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                localization.homeBody,
                style: theme.textStyles.onCanvas.text.small,
              ),
              const SizedBox(height: 4),
              Text(
                viewModel.counterValue,
                style: theme.textStyles.onCanvas.display.large,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
