import 'package:flutter/material.dart';
import 'package:my_portfolio_website/models/experience.dart';

class ExperienceCard extends StatelessWidget {
  final Experience experience;

  const ExperienceCard({
    required this.experience,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: theme.colorScheme.secondary.withValues(alpha: 0.65),
        borderRadius: BorderRadius.circular(26),
        border: Border.all(
          color: theme.colorScheme.outline,
        ),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isCompact = constraints.maxWidth < 760;

          Widget dateBadge = Container(
            padding: EdgeInsets.symmetric(
              horizontal: isCompact ? 12 : 14,
              vertical: isCompact ? 9 : 10,
            ),
            decoration: BoxDecoration(
              color: theme.colorScheme.surface.withValues(alpha: 0.72),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: theme.colorScheme.outline),
            ),
            child: Text(
              '${experience.from} - ${experience.to}',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.shadow,
                fontWeight: FontWeight.w700,
              ),
            ),
          );

          Widget content = Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                experience.company,
                maxLines: isCompact ? 2 : null,
                overflow: isCompact ? TextOverflow.ellipsis : null,
                style: (isCompact ? theme.textTheme.headlineSmall : theme.textTheme.headlineSmall)?.copyWith(
                  fontSize: isCompact ? 22 : null,
                  fontWeight: FontWeight.w800,
                  letterSpacing: -0.8,
                  height: 1.1,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                experience.position,
                style: theme.textTheme.titleMedium?.copyWith(
                  fontSize: isCompact ? 16 : null,
                  color: theme.colorScheme.tertiary,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                experience.description,
                style: theme.textTheme.bodyLarge?.copyWith(
                  fontSize: isCompact ? 15 : null,
                  color: theme.colorScheme.shadow,
                  height: 1.65,
                ),
              ),
            ],
          );

          if (isCompact) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                dateBadge,
                const SizedBox(height: 16),
                content,
              ],
            );
          }

          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              dateBadge,
              const SizedBox(width: 24),
              Expanded(child: content),
            ],
          );
        },
      ),
    );
  }
}
