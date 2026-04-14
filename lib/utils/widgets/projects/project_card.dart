import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:my_portfolio_website/models/project.dart';
import 'package:my_portfolio_website/utils/widgets/projects/project_badge.dart';
import 'package:my_portfolio_website/utils/widgets/square_button.dart';

class ProjectCard extends StatefulWidget {
  final Project project;
  final void Function()? onTap;

  const ProjectCard({
    super.key,
    required this.project,
    required this.onTap,
  });

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final hasGallery = widget.project.assets != null && widget.project.assets!.isNotEmpty;

    return MouseRegion(
      onEnter: (_) => setState(() => isHover = true),
      onExit: (_) => setState(() => isHover = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          curve: Curves.easeOut,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: isHover ? theme.colorScheme.surface : theme.colorScheme.secondary.withValues(alpha: 0.62),
            borderRadius: BorderRadius.circular(28),
            border: Border.all(
              color: isHover ? theme.colorScheme.tertiary : theme.colorScheme.outline,
            ),
            boxShadow: [
              if (isHover)
                BoxShadow(
                  color: theme.colorScheme.primary.withValues(alpha: 0.08),
                  blurRadius: 24,
                  offset: const Offset(0, 14),
                ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  Text(
                    widget.project.name,
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w800,
                      letterSpacing: -0.8,
                    ),
                  ),
                  ...widget.project.badges.map(ProjectBadge.new),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                widget.project.description,
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: theme.colorScheme.shadow,
                  height: 1.7,
                ),
              ),
              const SizedBox(height: 18),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  if (widget.project.url != null)
                    SquareButton(
                      tooltip: 'Open project',
                      imageUrl: 'assets/icons/url.png',
                      onTap: () {
                        html.window.open(widget.project.url!, '_blank');
                      },
                    ),
                  if (hasGallery)
                    Text(
                      'Tap to view gallery',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.tertiary,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
