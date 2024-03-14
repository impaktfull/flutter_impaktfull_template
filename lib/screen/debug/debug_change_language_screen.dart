import 'package:flutter_navigation_generator_annotations/flutter_navigation_generator_annotations.dart';
import 'package:flutter_template/di/injectable.dart';
import 'package:flutter_template/viewmodel/debug/change_language/debug_change_language_viewmodel.dart';
import 'package:flutter_template/widget/provider/provider_widget.dart';
import 'package:impaktfull_architecture/impaktfull_architecture.dart';

@flutterRoute
class DebugChangeLanguageScreen extends StatelessWidget {
  const DebugChangeLanguageScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ProviderWidget<DebugChangeLanguageViewModel>(
      create: () => getIt()..init(),
      builderWithThemeAndLocalizations: (context, viewModel, theme, localization) => ImpaktfullScreen(
        title: localization.debugChangeLanguageTitle,
        onBackTapped: viewModel.onBackTapped,
        child: ImpaktfullListView(
          children: [
            ImpaktfullSeparatedColumn(
              type: ImpaktfullSeparatorType.card,
              children: [
                for (final item in viewModel.supportedLocales)
                  ImpaktfullSimpleListItem(
                    title: viewModel.getTranslatedLocale(item, localization),
                    onTap: () => viewModel.onLocaleTapped(item),
                    trailingWidget: viewModel.isLocaleSelected(item)
                        ? Icon(
                            Icons.check,
                            size: 16,
                            color: theme.colors.accent1,
                          )
                        : null,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
