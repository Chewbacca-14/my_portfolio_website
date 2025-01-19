import 'package:flutter/material.dart';

class SkillBadge extends StatefulWidget {
  final String skill;

  const SkillBadge(this.skill, {super.key});

  @override
  State<SkillBadge> createState() => _SkillBadgeState();
}

class _SkillBadgeState extends State<SkillBadge> {
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
        duration: const Duration(milliseconds: 250),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: Theme.of(context).colorScheme.shadow,
            width: 0.6,
          ),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: (8 * scale),
          vertical: (5 * scale),
        ),
        child: Center(
          child: Text(
            widget.skill,
            style: TextStyle(
              color: isHover ? Theme.of(context).colorScheme.tertiary : Theme.of(context).colorScheme.shadow,
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
