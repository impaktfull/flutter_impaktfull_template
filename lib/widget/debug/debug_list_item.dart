import 'package:flutter/material.dart';
import 'package:flutter_template/widget/provider/app_theme_localizer.dart';

class DebugListItem extends StatelessWidget {
  final String title;
  final String? subtitle;
  final VoidCallback onTap;
  final Widget? trailing;

  const DebugListItem({
    required this.title,
    required this.onTap,
    this.subtitle,
    this.trailing,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppThemeLocalizer(
      builderTheme: (context, theme) => GestureDetector(
        onTap: onTap,
        child: Container(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: theme.textStyles.primary.listItemTitle,
                      ),
                      if (subtitle != null) ...[
                        const SizedBox(height: 4),
                        Text(
                          subtitle!,
                          style: theme.textStyles.primary.body,
                        ),
                      ],
                    ],
                  ),
                ),
                if (trailing != null) ...[
                  trailing!,
                ]
              ],
            ),
          ),
        ),
      ),
    );
  }
}
