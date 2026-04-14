import 'package:flutter/material.dart';

class SkillBadge extends StatefulWidget {
  final String skill;

  const SkillBadge(this.skill, {super.key});

  @override
  State<SkillBadge> createState() => _SkillBadgeState();
}

class _SkillBadgeState extends State<SkillBadge> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return MouseRegion(
      onEnter: (_) => setState(() => isHover = true),
      onExit: (_) => setState(() => isHover = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: isHover ? theme.colorScheme.tertiary.withValues(alpha: 0.12) : theme.colorScheme.secondary.withValues(alpha: 0.68),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isHover ? theme.colorScheme.tertiary : theme.colorScheme.outline,
          ),
        ),
        child: Text(
          widget.skill,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: isHover ? theme.colorScheme.primary : theme.colorScheme.shadow,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
