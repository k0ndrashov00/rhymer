import 'package:flutter/material.dart';
import 'package:rhymer/ui/ui.dart';

class SettingsActionCard extends StatelessWidget {
  const SettingsActionCard({
    super.key, 
    required this.title, 
    this.onTap, 
    required this.iconData, 
    this.iconColor,
  });

  final String title;
  final VoidCallback? onTap;
  final IconData iconData;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 8),
        child: BaseContainer(
          width: double.infinity,
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: theme.textTheme.titleMedium?.copyWith(fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Icon(
                  iconData,
                  size: 32,
                  // ignore: deprecated_member_use
                  color: iconColor ?? theme.hintColor.withOpacity(0.3),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}