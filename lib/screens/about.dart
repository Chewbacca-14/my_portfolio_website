import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CircleAvatar(
          radius: 80,
          backgroundImage: NetworkImage(
            'https://media.licdn.com/dms/image/v2/D4E03AQFxAjdx65J4NQ/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1720036174465?e=1749081600&v=beta&t=JaB6TH6n3Gz6_MnRAqWPL9OsSX7XQoeGClWKpA5FlQE',
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
          'Maxim Bulanovich',
          style: TextStyle(
            fontSize: 55,
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          'Flutter Developer',
          style: TextStyle(
            fontSize: 18,
            color: Theme.of(context).colorScheme.tertiary,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          'Flutter Developer | Crafting Engaging and High-Performance Mobile Applications | Eager to Learn, Adapt, and Drive Innovation',
          style: TextStyle(
            fontSize: 15,
            color: Theme.of(context).colorScheme.shadow,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          'In addition to App Development, I collaborate with experienced specialists to create Websites, Telegram Bots, and Graphic Design to bring your ideas to life. Feel free to contact me for website creation, UI/UX design, Telegram bots, and more.',
          style: TextStyle(
            fontSize: 15,
            color: Theme.of(context).colorScheme.shadow,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 16),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 10,
          children: [
            Text(
              'Get in touch',
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
              tooltip: 'Open My LinkedIn',
              onTap: () {
                html.window.open('https://www.linkedin.com/in/max-bulanovich-702642260', '_blank');
              },
            ),
            SquareButton(
              imageUrl: 'assets/icons/github.png',
              tooltip: 'Open My GitHub',
              onTap: () {
                html.window.open('https://github.com/Chewbacca-14', '_blank');
              },
            ),
            SquareButton(
              imageUrl: 'assets/icons/telegram.png',
              tooltip: 'Message me on Telegram',
              onTap: () {
                html.window.open('https://t.me/chwbcc_max', '_blank');
              },
            ),
            SquareButton(
              tooltip: 'Follow me on Instagram',
              imageUrl: 'assets/icons/instagram.png',
              onTap: () {
                html.window.open('https://www.instagram.com/chwbcc_max/', '_blank');
              },
            ),
          ],
        ),
        const SizedBox(height: 50),
        Text(
          'Statistics',
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontSize: 32,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 20),
        const StatsValueContainer(
          2.5,
          suffix: '+ years of experience',
        ),
        StatsValueContainer(
          ((1700) + (daysDifference * 5.85)).roundToDouble(),
          suffix: ' + hours of coding',
        ),
        StatsValueContainer(
          ((700) + (daysDifference * 1)).roundToDouble(),
          suffix: '+ coups of tea',
        ),
        const StatsValueContainer(
          15,
          suffix: '+ commercial projects',
        ),
      ],
    );
  }
}
