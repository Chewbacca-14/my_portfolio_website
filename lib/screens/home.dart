import 'dart:html' as html;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio_website/providers/nav_provider.dart';
import 'package:my_portfolio_website/screens/about.dart';
import 'package:my_portfolio_website/screens/blog/blog.dart';
import 'package:my_portfolio_website/screens/experience/experience.dart';
import 'package:my_portfolio_website/screens/footer/footer.dart';
import 'package:my_portfolio_website/screens/projects/projects.dart';
import 'package:my_portfolio_website/screens/skills/skills.dart';
import 'package:my_portfolio_website/utils/widgets/menu_tab.dart';
import 'package:provider/provider.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navProvider = Provider.of<NavProvider>(context);
    final theme = Theme.of(context);
    final screenWidth = MediaQuery.of(context).size.width;
    final isCompact = screenWidth < 800;

    return Scaffold(
      backgroundColor: theme.colorScheme.secondary,
      appBar: AppBar(
        toolbarHeight: 110,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        shadowColor: Colors.transparent,
        forceMaterialTransparency: true,
        title: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1160),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: theme.colorScheme.tertiary,
                      ),
                    ),
                    const SizedBox(width: 14),
                    TextButton(
                      onPressed: () => navProvider.scrollTo(NavItems.home),
                      child: Text(
                        'Maxim Bulanovich',
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: theme.colorScheme.primary,
                          fontWeight: FontWeight.w800,
                          letterSpacing: -0.5,
                        ),
                      ),
                    ),
                  ],
                ),
                if (!isCompact)
                  Flexible(
                    child: Wrap(
                      alignment: WrapAlignment.end,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 2,
                      children: [
                        MenuTab(
                          'Experience',
                          onTap: () => navProvider.scrollTo(NavItems.experience),
                        ),
                        MenuTab(
                          'Projects',
                          onTap: () => navProvider.scrollTo(NavItems.projects),
                        ),
                        MenuTab(
                          'Skills',
                          onTap: () => navProvider.scrollTo(NavItems.skills),
                        ),
                        MenuTab(
                          'Blog',
                          onTap: () => navProvider.scrollTo(NavItems.blog),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: -180,
            left: -120,
            child: _GlowOrb(
              size: 420,
              color: theme.colorScheme.tertiary.withValues(alpha: 0.2),
            ),
          ),
          Positioned(
            top: 280,
            right: -140,
            child: _GlowOrb(
              size: 360,
              color: const Color(0xFF22D3EE).withValues(alpha: 0.1),
            ),
          ),
          Positioned(
            bottom: 120,
            left: 80,
            child: _GlowOrb(
              size: 280,
              color: const Color(0xFF7C3AED).withValues(alpha: 0.08),
            ),
          ),
          SingleChildScrollView(
            controller: navProvider.scrollController,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 32),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1160),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 28),
                      const AboutScreen(),
                      const SizedBox(height: 48),
                      _SectionShell(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SectionHeader(
                              key: navProvider.experience,
                              eyebrow: 'Career',
                              title: 'Experience',
                              subtitle: 'Product work across freelance and company teams, with a strong focus on Flutter delivery.',
                            ),
                            const SizedBox(height: 28),
                            const ExperienceScreen(),
                          ],
                        ),
                      ),
                      const SizedBox(height: 28),
                      _SectionShell(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SectionHeader(
                              key: navProvider.projects,
                              eyebrow: 'Selected Work',
                              title: 'Projects',
                              subtitle: 'A curated set of commercial and personal projects that reflect real product, platform, and delivery experience.',
                              trailing: Text(
                                'No NDA work shown',
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: theme.colorScheme.tertiary,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            const SizedBox(height: 28),
                            const ProjectsScreen(),
                          ],
                        ),
                      ),
                      const SizedBox(height: 28),
                      _SectionShell(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SectionHeader(
                              key: navProvider.skills,
                              eyebrow: 'Toolbox',
                              title: 'Skills',
                              subtitle: 'Technologies and workflows I use to ship reliable mobile and web experiences.',
                            ),
                            const SizedBox(height: 28),
                            const SkillsScreen(),
                          ],
                        ),
                      ),
                      const SizedBox(height: 28),
                      _SectionShell(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SectionHeader(
                              key: navProvider.blog,
                              eyebrow: 'Writing',
                              title: 'Blog',
                              subtitle: 'Notes from hands-on work with Flutter, product development, and building for the web.',
                            ),
                            const SizedBox(height: 28),
                            const BlogScreen(),
                          ],
                        ),
                      ),
                      const SizedBox(height: 28),
                      _SectionShell(
                        child: Column(
                          children: [
                            Text(
                              'Building thoughtful Flutter products for mobile and web.',
                              textAlign: TextAlign.center,
                              style: theme.textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.w800,
                                letterSpacing: -0.8,
                              ),
                            ),
                            const SizedBox(height: 14),
                            Text(
                              'Available for freelance work, product collaboration, and long-term development partnerships.',
                              textAlign: TextAlign.center,
                              style: theme.textTheme.bodyLarge?.copyWith(
                                color: theme.colorScheme.shadow,
                                height: 1.6,
                              ),
                            ),
                            const SizedBox(height: 22),
                            Wrap(
                              alignment: WrapAlignment.center,
                              spacing: 10,
                              runSpacing: 10,
                              children: [
                                _FooterLink(
                                  tooltip: 'Open My LinkedIn',
                                  icon: 'assets/icons/linkedin.png',
                                  url: 'https://www.linkedin.com/in/max-bulanovich-702642260',
                                ),
                                _FooterLink(
                                  tooltip: 'Open My GitHub',
                                  icon: 'assets/icons/github.png',
                                  url: 'https://github.com/Chewbacca-14',
                                ),
                                _FooterLink(
                                  tooltip: 'Message me on Telegram',
                                  icon: 'assets/icons/telegram.png',
                                  url: 'https://t.me/chwbcc_max',
                                ),
                                _FooterLink(
                                  tooltip: 'Follow me on Instagram',
                                  icon: 'assets/icons/instagram.png',
                                  url: 'https://www.instagram.com/chwbcc_max/',
                                ),
                              ],
                            ),
                            const SizedBox(height: 26),
                            Text(
                              'Made with Flutter by Maxim Bulanovich',
                              textAlign: TextAlign.center,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: theme.colorScheme.shadow,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 22),
                      const Footer(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String eyebrow;
  final String title;
  final String subtitle;
  final Widget? trailing;

  const SectionHeader({
    super.key,
    required this.eyebrow,
    required this.title,
    required this.subtitle,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return LayoutBuilder(
      builder: (context, constraints) {
        final isCompact = constraints.maxWidth < 760;
        return Flex(
          direction: isCompact ? Axis.vertical : Axis.horizontal,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (isCompact)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    eyebrow.toUpperCase(),
                    style: theme.textTheme.labelLarge?.copyWith(
                      color: theme.colorScheme.tertiary,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1.4,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    title,
                    style: theme.textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.w800,
                      letterSpacing: -1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 720),
                    child: Text(
                      subtitle,
                      style: theme.textTheme.bodyLarge?.copyWith(
                        color: theme.colorScheme.shadow,
                        height: 1.65,
                      ),
                    ),
                  ),
                ],
              )
            else
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      eyebrow.toUpperCase(),
                      style: theme.textTheme.labelLarge?.copyWith(
                        color: theme.colorScheme.tertiary,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1.4,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      title,
                      style: theme.textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.w800,
                        letterSpacing: -1.2,
                      ),
                    ),
                    const SizedBox(height: 10),
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 720),
                      child: Text(
                        subtitle,
                        style: theme.textTheme.bodyLarge?.copyWith(
                          color: theme.colorScheme.shadow,
                          height: 1.65,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            if (trailing != null) ...[
              SizedBox(height: isCompact ? 14 : 0, width: isCompact ? 0 : 24),
              trailing!,
            ],
          ],
        );
      },
    );
  }
}

class _SectionShell extends StatelessWidget {
  final Widget child;

  const _SectionShell({required this.child});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            theme.colorScheme.surface.withValues(alpha: 0.94),
            const Color(0xFF0C1423).withValues(alpha: 0.92),
          ],
        ),
        borderRadius: BorderRadius.circular(34),
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: 0.95),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.22),
            blurRadius: 28,
            offset: const Offset(0, 18),
          ),
          BoxShadow(
            color: theme.colorScheme.tertiary.withValues(alpha: 0.04),
            blurRadius: 18,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: child,
    );
  }
}

class _GlowOrb extends StatelessWidget {
  final double size;
  final Color color;

  const _GlowOrb({
    required this.size,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(
            colors: [
              color,
              color.withValues(alpha: color.a * 0.35),
              color.withValues(alpha: 0),
            ],
          ),
        ),
      ),
    );
  }
}

class _FooterLink extends StatelessWidget {
  final String tooltip;
  final String icon;
  final String url;

  const _FooterLink({
    required this.tooltip,
    required this.icon,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: InkWell(
        onTap: () => html.window.open(url, '_blank'),
        borderRadius: BorderRadius.circular(18),
        child: Ink(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Theme.of(context).colorScheme.surface.withValues(alpha: 0.92),
                const Color(0xFF0B1322).withValues(alpha: 0.9),
              ],
            ),
            borderRadius: BorderRadius.circular(18),
            border: Border.all(
              color: Theme.of(context).colorScheme.outline,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.18),
                blurRadius: 14,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Image.asset(
            icon,
            width: 18,
            height: 18,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
