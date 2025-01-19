import 'package:flutter/material.dart';
import 'package:my_portfolio_website/models/project.dart';
import 'package:my_portfolio_website/utils/widgets/projects/project_badge.dart';

class ProjectCard extends StatefulWidget {
  final Project project;
  const ProjectCard({
    super.key,
    required this.project,
  });

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  double scale = 1.0;

  bool get isHover => scale == 1.2;

  void onEnter() {
    setState(() {
      scale = 1.2;
    });
  }

  void onExit() {
    setState(() {
      scale = 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        onEnter();
      },
      onExit: (event) {
        onExit();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 170),
        decoration: BoxDecoration(
          border: Border.all(color: isHover ? Theme.of(context).colorScheme.tertiary : Theme.of(context).colorScheme.shadow, width: isHover ? 0.6 : 0.35),
          borderRadius: BorderRadius.circular(6),
        ),
        padding: EdgeInsets.all(16 * scale),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              alignment: WrapAlignment.start,
              runSpacing: 8,
              spacing: 8,
              children: [
                Text(
                  widget.project.name,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ...widget.project.badges.map(
                  (badge) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ProjectBadge(badge),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              widget.project.description,
              style: TextStyle(
                color: Theme.of(context).colorScheme.shadow,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
