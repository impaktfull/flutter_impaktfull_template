import 'package:flutter/material.dart';

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
    return GestureDetector(
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
                    Text(title),
                    if (subtitle != null) ...[
                      Text(
                        subtitle!,
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
    );
  }
}
