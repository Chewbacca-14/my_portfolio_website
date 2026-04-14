import 'dart:html' as html;

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio_website/router.dart';
import 'package:my_portfolio_website/utils/widgets/square_button.dart';
import 'package:my_portfolio_website/utils/widgets/statistics/stats_value_container.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  int get daysDifference {
    final DateTime from = DateTime(2025, 2, 3);
    final DateTime today = DateTime.now();
    return today.difference(from).inDays;
  }

  double floorToHundreds(double value) {
    return (value / 100).floor() * 100;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screenWidth = MediaQuery.of(context).size.width;
    final isCompact = screenWidth < 900;

    return Container(
      padding: EdgeInsets.all(isCompact ? 24 : 34),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(38),
        border: Border.all(color: theme.colorScheme.outline),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            theme.colorScheme.surface.withValues(alpha: 0.98),
            const Color(0xFF0C1526).withValues(alpha: 0.95),
            const Color(0xFF0A1020).withValues(alpha: 0.92),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.28),
            blurRadius: 34,
            offset: const Offset(0, 18),
          ),
          BoxShadow(
            color: theme.colorScheme.tertiary.withValues(alpha: 0.06),
            blurRadius: 24,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Flex(
            direction: isCompact ? Axis.vertical : Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (isCompact)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildEyebrow(theme),
                    const SizedBox(height: 22),
                    _buildHeadline(theme),
                    const SizedBox(height: 18),
                    _buildDescription(theme),
                    const SizedBox(height: 24),
                    _buildActions(theme, context),
                    const SizedBox(height: 26),
                    _buildSocials(theme),
                  ],
                )
              else
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildEyebrow(theme),
                      const SizedBox(height: 22),
                      _buildHeadline(theme),
                      const SizedBox(height: 18),
                      _buildDescription(theme),
                      const SizedBox(height: 24),
                      _buildActions(theme, context),
                      const SizedBox(height: 26),
                      _buildSocials(theme),
                    ],
                  ),
                ),
              SizedBox(width: isCompact ? 0 : 34, height: isCompact ? 26 : 0),
              if (isCompact)
                _buildProfileCard(theme, isCompact)
              else
                Expanded(
                  flex: 2,
                  child: _buildProfileCard(theme, isCompact),
                ),
            ],
          ),
          const SizedBox(height: 28),
          LayoutBuilder(
            builder: (context, constraints) {
              final stats = [
                const StatsValueContainer(
                  3.5,
                  suffix: 'Years of experience',
                ),
                StatsValueContainer(
                  floorToHundreds((1700) + (daysDifference * 5.85)),
                  suffix: 'Hours of coding',
                ),
                StatsValueContainer(
                  floorToHundreds((700 + daysDifference).toDouble()),
                  suffix: 'Cups of tea',
                ),
                const StatsValueContainer(
                  25,
                  suffix: 'Commercial projects',
                ),
              ];

              if (constraints.maxWidth < 560) {
                return Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  children: stats
                      .map(
                        (stat) => SizedBox(
                          width: (constraints.maxWidth - 12) / 2,
                          child: stat,
                        ),
                      )
                      .toList(),
                );
              }

              if (constraints.maxWidth < 860) {
                return Column(
                  children: stats
                      .map(
                        (stat) => Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: SizedBox(
                            width: double.infinity,
                            child: stat,
                          ),
                        ),
                      )
                      .toList(),
                );
              }

              return Row(
                children: stats
                    .map(
                      (stat) => Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: stat,
                        ),
                      ),
                    )
                    .toList(),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildEyebrow(ThemeData theme) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: theme.colorScheme.tertiary.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(999),
        border: Border.all(
          color: theme.colorScheme.tertiary.withValues(alpha: 0.18),
        ),
      ),
      child: AnimatedTextKit(
        isRepeatingAnimation: false,
        animatedTexts: [
          TyperAnimatedText(
            'Mobile software engineer focused on polished product delivery',
            textStyle: theme.textTheme.labelLarge?.copyWith(
              color: theme.colorScheme.tertiary,
              fontWeight: FontWeight.w800,
              letterSpacing: 0.2,
            ),
            speed: const Duration(milliseconds: 40),
          ),
        ],
      ),
    );
  }

  Widget _buildHeadline(ThemeData theme) {
    return Text(
      'Designing and shipping professional Flutter experiences for mobile and web.',
      style: theme.textTheme.displaySmall?.copyWith(
        fontWeight: FontWeight.w800,
        letterSpacing: -1.6,
        height: 1.05,
      ),
    );
  }

  Widget _buildDescription(ThemeData theme) {
    return Text(
      'I build fast, clean, and business-ready apps with strong attention to UX, maintainability, and delivery quality. Alongside app development, I collaborate on websites, bots, and product visuals when a project needs broader execution.',
      style: theme.textTheme.bodyLarge?.copyWith(
        color: theme.colorScheme.shadow,
        height: 1.8,
      ),
    );
  }

  Widget _buildActions(ThemeData theme, BuildContext context) {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            context.router.navigate(const AboutMeRoute());
          },
          child: const Text('More About Me'),
        ),
        Text(
          'Based in the Czech Republic, open to freelance and product teams.',
          style: theme.textTheme.bodyMedium?.copyWith(
            color: theme.colorScheme.shadow,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }

  Widget _buildSocials(ThemeData theme) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Text(
          'Connect',
          style: theme.textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.w800,
          ),
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
    );
  }

  Widget _buildProfileCard(ThemeData theme, bool isCompact) {
    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: theme.colorScheme.secondary.withValues(alpha: 0.92),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: theme.colorScheme.outline,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                border: Border.all(
                  color: theme.colorScheme.outline,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(28),
                child: Image.asset(
                  'assets/newav.jpg',
                  height: isCompact ? 220 : 280,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Maxim Bulanovich',
            style: theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.w800,
              letterSpacing: -1,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            'Mobile Software Engineer',
            style: theme.textTheme.titleMedium?.copyWith(
              color: theme.colorScheme.tertiary,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 14),
          Text(
            'Cross-platform apps, dashboards, integrations, and product-focused delivery from idea to launch.',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.shadow,
              height: 1.7,
            ),
          ),
        ],
      ),
    );
  }
}
