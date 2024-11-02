import 'package:flutter_navigation_generator_annotations/flutter_navigation_generator_annotations.dart';
import 'package:flutter_template/di/injectable.dart';
import 'package:flutter_template/viewmodel/debug/debug_viewmodel.dart';
import 'package:flutter_template/widget/provider/provider_widget.dart';
import 'package:impaktfull_architecture/impaktfull_architecture.dart';
import 'package:impaktfull_ui_2/impaktfull_ui.dart';

@flutterRoute
class DebugScreen extends StatelessWidget {
  const DebugScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ProviderWidget<DebugViewModel>(
      create: () => getIt()..init(),
      builderWithThemeAndLocalizations:
          (context, viewModel, theme, localization) => ImpaktfullUiScreen(
        onBackTapped: viewModel.onBackTapped,
        title: localization.debugTitle,
        child: ImpaktfullUiListView(
          padding: const EdgeInsets.all(16),
          children: [
            ImpaktfullUiSeparatedColumn(
              children: [
                ImpaktfullUiListItem(
                  title: localization.debugListItemChangeLangague,
                  subtitle: viewModel.getCurrentLanguage(localization),
                  onTap: viewModel.onChangeLanguageTapped,
                ),
                ImpaktfullUiListItem(
                  title: localization.debugListItemChangeTargetPlatform,
                  subtitle: viewModel.getCurrentTargetPlatform(localization),
                  onTap: viewModel.onChangeTargetPlatformTapped,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
