import 'package:flutter/material.dart';

class ProjectBadge extends StatelessWidget {
  final String text;

  const ProjectBadge(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
      decoration: BoxDecoration(
        color: theme.colorScheme.tertiary.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(999),
        border: Border.all(
          color: theme.colorScheme.tertiary.withValues(alpha: 0.18),
        ),
      ),
      child: Text(
        text,
        style: theme.textTheme.labelLarge?.copyWith(
          color: theme.colorScheme.tertiary,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
