import 'package:flutter/material.dart';
import 'package:my_portfolio_website/utils/widgets/square_button.dart';
import 'dart:html' as html;

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CircleAvatar(
          radius: 80,
          backgroundImage: NetworkImage(
            'https://media.licdn.com/dms/image/v2/D4E03AQFxAjdx65J4NQ/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1720036174465?e=1742428800&v=beta&t=ILE2RKgw2ztaFNRHk0hcW5Ly-tOHBmNC9bXILIxB5Dw',
          ),
        ),
        const SizedBox(height: 16),
        Text(
          'Hey, I\'m',
          style: TextStyle(
            fontSize: 15,
            color: Theme.of(context).colorScheme.shadow,
            fontWeight: FontWeight.w600,
          ),
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
          'Flutter Developer | Crafting Engaging and High-Performance Mobile Applications | 2+ Years of Experience in Building Interactive User Experiences | Eager to Learn, Adapt, and Drive Innovation',
          style: TextStyle(
            fontSize: 15,
            color: Theme.of(context).colorScheme.shadow,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 16),
        Row(
          spacing: 10,
          children: [
            SquareButton(
              imageUrl: 'assets/icons/linkedin.png',
              onTap: () {
                html.window.open('https://www.linkedin.com/in/max-bulanovich-702642260', '_blank');
              },
            ),
            SquareButton(
              imageUrl: 'assets/icons/github.png',
              onTap: () {
                html.window.open('https://github.com/Chewbacca-14', '_blank');
              },
            ),
            SquareButton(
              imageUrl: 'assets/icons/telegram.png',
              onTap: () {
                html.window.open('https://t.me/chwbcc_max', '_blank');
              },
            ),
            SquareButton(
              imageUrl: 'assets/icons/instagram.png',
              onTap: () {
                html.window.open('https://www.instagram.com/chwbcc_max/', '_blank');
              },
            ),
          ],
        )
      ],
    );
  }
}