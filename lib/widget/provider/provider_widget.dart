import 'package:flutter/material.dart';
import 'package:flutter_template/theme/app_theme.dart';
import 'package:flutter_template/util/locale/localization.dart';
import 'package:impaktfull_architecture/impaktfull_architecture.dart';

class ProviderWidget<T extends ChangeNotifier> extends StatelessWidget {
  final Widget Function(
    BuildContext context,
    T viewModel,
  )? builder;
  final Widget Function(
    BuildContext context,
    T viewModel,
    AppTheme theme,
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
    return BaseProviderWidget<T, AppTheme, Localization>(
      create: () => create(),
      builder: builder,
      builderWithThemeAndLocalizations: builderWithThemeAndLocalizations,
    );
  }
}
