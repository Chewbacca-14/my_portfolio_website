import 'package:flutter/material.dart';

class MenuTab extends StatefulWidget {
  final String title;
  final void Function()? onTap;

  const MenuTab(
    this.title, {
    super.key,
    this.onTap,
  });

  @override
  State<MenuTab> createState() => _MenuTabState();
}

class _MenuTabState extends State<MenuTab> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: TextButton(
        onPressed: widget.onTap,
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          backgroundColor: isHover ? theme.colorScheme.tertiary.withValues(alpha: 0.1) : Colors.transparent,
        ),
        child: Text(
          widget.title,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: isHover ? theme.colorScheme.primary : theme.colorScheme.shadow,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
