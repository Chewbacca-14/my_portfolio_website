import 'package:flutter/material.dart';
import 'package:my_portfolio_website/utils/widgets/skills/skill_badge.dart';
part 'skills_list.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      alignment: WrapAlignment.center,
      children: _mySkills
          .map(
            (skill) => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SkillBadge(skill),
              ],
            ),
          )
          .toList(),
    );
  }
}
