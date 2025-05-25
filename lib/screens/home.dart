import 'package:flutter/material.dart';
import 'package:my_portfolio_website/providers/nav_provider.dart';
import 'package:my_portfolio_website/screens/about.dart';
import 'package:my_portfolio_website/screens/blog/blog.dart';
import 'package:my_portfolio_website/screens/experience/experience.dart';
import 'package:my_portfolio_website/screens/footer/footer.dart';
import 'package:my_portfolio_website/screens/projects/projects.dart';
import 'package:my_portfolio_website/screens/skills/skills.dart';
import 'package:my_portfolio_website/utils/widgets/menu_tab.dart';
import 'dart:html' as html;

import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navProvider = Provider.of<NavProvider>(context);

    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      appBar: AppBar(
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 900,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    navProvider.scrollTo(NavItems.home);
                  },
                  child: Text(
                    'Maxim Bulanovich',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.shadow,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                if (screenWidth > 600) ...[
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      MenuTab(
                        'Experience',
                        onTap: () {
                          navProvider.scrollTo(NavItems.experience);
                        },
                      ),
                      MenuTab(
                        'Projects',
                        onTap: () {
                          navProvider.scrollTo(NavItems.projects);
                        },
                      ),
                      MenuTab(
                        'Skills',
                        onTap: () {
                          navProvider.scrollTo(NavItems.skills);
                        },
                      ),
                      MenuTab(
                        'Blog',
                        onTap: () {
                          navProvider.scrollTo(NavItems.blog);
                        },
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        controller: navProvider.scrollController,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 800,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      spacing: 50,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: screenWidth > 600 ? 110 : 50),
                        const AboutScreen(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              key: navProvider.experience,
                              'Experience',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 32,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: ExperienceScreen(),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              key: navProvider.projects,
                              'Projects (no NDAs)',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 32,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: ProjectsScreen(),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              key: navProvider.skills,
                              'Skills',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 32,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Center(
                                child: SkillsScreen(),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              key: navProvider.blog,
                              'Blog',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 32,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Center(
                                child: BlogScreen(),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 90),
                          child: Center(
                            child: Wrap(
                              alignment: WrapAlignment.center,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                Text(
                                  'Made with Flutter ❤️ \nby Maxim Bulanovich | Flutter Developer',
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.shadow,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Center(
                            child: Wrap(
                              alignment: WrapAlignment.center,
                              children: [
                                IconButton(
                                  tooltip: 'Open My LinkedIn',
                                  onPressed: () {
                                    html.window.open('https://www.linkedin.com/in/max-bulanovich-702642260', '_blank');
                                  },
                                  icon: Image(
                                    image: const AssetImage('assets/icons/linkedin.png'),
                                    color: Theme.of(context).colorScheme.primary,
                                    width: 18,
                                    height: 18,
                                  ),
                                ),
                                IconButton(
                                  tooltip: 'Open My GitHub',
                                  onPressed: () {
                                    html.window.open('https://github.com/Chewbacca-14', '_blank');
                                  },
                                  icon: Image(
                                    image: const AssetImage('assets/icons/github.png'),
                                    color: Theme.of(context).colorScheme.primary,
                                    width: 18,
                                    height: 18,
                                  ),
                                ),
                                IconButton(
                                  tooltip: 'Message me on Telegram',
                                  onPressed: () {
                                    html.window.open('https://t.me/chwbcc_max', '_blank');
                                  },
                                  icon: Image(
                                    image: const AssetImage('assets/icons/telegram.png'),
                                    color: Theme.of(context).colorScheme.primary,
                                    width: 18,
                                    height: 18,
                                  ),
                                ),
                                IconButton(
                                  tooltip: 'Follow me on Instagram',
                                  onPressed: () {
                                    html.window.open('https://www.instagram.com/chwbcc_max/', '_blank');
                                  },
                                  icon: Image(
                                    image: const AssetImage('assets/icons/instagram.png'),
                                    color: Theme.of(context).colorScheme.primary,
                                    width: 18,
                                    height: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Footer(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
