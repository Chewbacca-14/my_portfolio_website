import 'package:flutter/material.dart';
import 'package:my_portfolio_website/i18n/strings.g.dart';
import 'package:my_portfolio_website/models/experience.dart';
import 'package:my_portfolio_website/utils/widgets/experience/experience_card.dart';
part 'experience_list.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: _myExperience(context).map((experience) => ExperienceCard(experience: experience)).toList(),
    );
  }
}
