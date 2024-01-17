import 'package:flutter/material.dart';
import 'package:flutter_template/widget/provider/app_theme_localizer.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppThemeLocalizer(
      builderTheme: (context, theme) => CircularProgressIndicator(
        color: theme.colors.accent,
      ),
    );
  }
}
