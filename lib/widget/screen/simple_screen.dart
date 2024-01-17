import 'package:flutter/material.dart';
import 'package:flutter_template/widget/provider/app_theme_localizer.dart';
import 'package:impaktfull_architecture/impaktfull_architecture.dart';

class SimpleScreen extends StatelessWidget {
  final String title;
  final Widget child;
  final List<Widget> actions;
  final VoidCallback? onBackTapped;

  const SimpleScreen({
    required this.title,
    required this.child,
    this.actions = const [],
    this.onBackTapped,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppThemeLocalizer(
      builderTheme: (context, theme) => StatusBar.light(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                width: double.infinity,
                color: theme.colors.primary,
                child: SafeArea(
                  bottom: false,
                  child: Row(
                    children: [
                      const SizedBox(width: 4),
                      if (onBackTapped != null) ...[
                        IconButton(
                          icon: const Icon(Icons.arrow_back),
                          onPressed: onBackTapped,
                          color: theme.colors.invertedPrimary,
                        ),
                      ] else ...[
                        const SizedBox(width: 4),
                      ],
                      const SizedBox(width: 8),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Text(
                            title,
                            style: theme.textStyles.invertedPrimary.title,
                          ),
                        ),
                      ),
                      SizedBox(width: actions.isEmpty ? 0 : 8),
                      ...actions,
                      const SizedBox(width: 8),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: child,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
