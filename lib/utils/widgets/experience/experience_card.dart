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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          SizedBox(
            width: 120,
            child: Wrap(
              spacing: 8,
              children: [
                Text(
                  '${experience.from} -',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.shadow,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  experience.to,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.shadow,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  experience.company,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 21,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  experience.position,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.85),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  experience.description,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.shadow,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
