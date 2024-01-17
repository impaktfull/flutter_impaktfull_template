import 'package:flutter/material.dart';
import 'package:flutter_template/theme/app_theme.dart';

class DebugSeparator extends StatelessWidget {
  const DebugSeparator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      color: AppTheme.of(context).colors.primary,
    );
  }
}
