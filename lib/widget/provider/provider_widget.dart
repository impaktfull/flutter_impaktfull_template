import 'package:flutter_template/util/locale/localization.dart';
import 'package:impaktfull_architecture/impaktfull_architecture.dart';
import 'package:impaktfull_ui_2/impaktfull_ui.dart';

class ProviderWidget<T extends ChangeNotifier> extends StatelessWidget {
  final Widget Function(
    BuildContext context,
    T viewModel,
  )? builder;
  final Widget Function(
    BuildContext context,
    T viewModel,
    ImpaktfullUiTheme theme,
    Localization localization,
  )? builderWithThemeAndLocalizations;
  final T Function() create;

  const ProviderWidget({
    required this.create,
    this.builder,
    this.builderWithThemeAndLocalizations,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BaseProviderWidget<T, ImpaktfullUiTheme, Localization>(
      create: () => create(),
      builder: builder,
      builderWithThemeAndLocalizations: builderWithThemeAndLocalizations,
    );
  }
}
