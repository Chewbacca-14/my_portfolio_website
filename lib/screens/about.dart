import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio_website/i18n/strings.g.dart';
import 'package:my_portfolio_website/router.dart';
import 'package:my_portfolio_website/utils/widgets/square_button.dart';
import 'package:my_portfolio_website/utils/widgets/statistics/stats_value_container.dart';
import 'dart:html' as html;

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  int get daysDifference {
    final DateTime from = DateTime(2025, 2, 3);
    final DateTime today = DateTime.now();
    final int difference = today.difference(from).inDays;
    return difference;
  }

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CircleAvatar(
          radius: 80,
          backgroundImage: AssetImage(
            'assets/me.png',
          ),
        ),
        const SizedBox(height: 16),
        AnimatedTextKit(
          animatedTexts: [
            TyperAnimatedText(
              'Hey, I\'m',
              textStyle: TextStyle(
                fontSize: 15,
                color: Theme.of(context).colorScheme.shadow,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        Text(
          t.about.name,
          style: TextStyle(
            fontSize: 55,
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          t.about.role,
          style: TextStyle(
            fontSize: 18,
            color: Theme.of(context).colorScheme.tertiary,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          t.about.descr_first,
          style: TextStyle(
            fontSize: 15,
            color: Theme.of(context).colorScheme.shadow,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          t.about.descr_second,
          style: TextStyle(
            fontSize: 15,
            color: Theme.of(context).colorScheme.shadow,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            side: const BorderSide(color: Colors.white, width: 1),
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            elevation: 0,
          ),
          onPressed: () {
            context.router.navigate(
              const AboutMeRoute(),
            );
          },
          child: Text(t.about.about_me),
        ),
        const SizedBox(height: 32),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 10,
          children: [
            Text(
              t.about.get_in_touch,
              style: TextStyle(
                fontSize: 15,
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
            Icon(
              Icons.arrow_forward,
              color: Theme.of(context).colorScheme.primary,
              size: 18,
            ),
            SquareButton(
              imageUrl: 'assets/icons/linkedin.png',
              tooltip: t.home.open_linkedin,
              onTap: () {
                html.window.open('https://www.linkedin.com/in/max-bulanovich-702642260', '_blank');
              },
            ),
            SquareButton(
              imageUrl: 'assets/icons/github.png',
              tooltip: t.home.open_github,
              onTap: () {
                html.window.open('https://github.com/Chewbacca-14', '_blank');
              },
            ),
            SquareButton(
              imageUrl: 'assets/icons/telegram.png',
              tooltip: t.home.message_telegram,
              onTap: () {
                html.window.open('https://t.me/chwbcc_max', '_blank');
              },
            ),
            SquareButton(
              tooltip: t.home.follow_instagram,
              imageUrl: 'assets/icons/instagram.png',
              onTap: () {
                html.window.open('https://www.instagram.com/chwbcc_max/', '_blank');
              },
            ),
          ],
        ),
        const SizedBox(height: 50),
        Text(
          t.about.statistics,
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontSize: 32,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 20),
        StatsValueContainer(
          3,
          suffix: t.about.years_experience,
        ),
        StatsValueContainer(
          ((1700) + (daysDifference * 5.85)).roundToDouble(),
          suffix: t.about.hours_coding,
        ),
        StatsValueContainer(
          ((700) + (daysDifference * 1)).roundToDouble(),
          suffix: t.about.cups,
        ),
        StatsValueContainer(
          20,
          suffix: t.about.projects,
        ),
      ],
    );
  }
}
