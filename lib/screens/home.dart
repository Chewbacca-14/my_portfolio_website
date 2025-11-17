import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio_website/i18n/strings.g.dart';
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

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget languageSelector() {
    return PopupMenuButton<AppLocale>(
      color: Theme.of(context).colorScheme.shadow,
      icon: Icon(
        Icons.language,
        color: Theme.of(context).colorScheme.primary,
      ),
      tooltip: t.home.change_language,
      onSelected: (AppLocale locale) {
        LocaleSettings.setLocale(locale);
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<AppLocale>>[
        PopupMenuItem<AppLocale>(
          value: AppLocale.en,
          child: Text(
            'English',
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 14,
            ),
          ),
        ),
        PopupMenuItem<AppLocale>(
          value: AppLocale.ru,
          child: Text(
            'Русский',
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 14,
            ),
          ),
        ),
        PopupMenuItem<AppLocale>(
          value: AppLocale.cs,
          child: Text(
            'Čeština',
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
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
                        t.home.experience,
                        onTap: () {
                          navProvider.scrollTo(NavItems.experience);
                        },
                      ),
                      MenuTab(
                        t.home.projects,
                        onTap: () {
                          navProvider.scrollTo(NavItems.projects);
                        },
                      ),
                      MenuTab(
                        t.home.skills,
                        onTap: () {
                          navProvider.scrollTo(NavItems.skills);
                        },
                      ),
                      MenuTab(
                        t.home.blog,
                        onTap: () {
                          navProvider.scrollTo(NavItems.blog);
                        },
                      ),
                      languageSelector(),
                    ],
                  ),
                ] else ...[
                  languageSelector(),
                ]
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
                              t.home.experience,
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
                              '${t.home.projects} (no NDAs)',
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
                              t.home.skills,
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
                              t.home.blog,
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
                                  t.home.footer_text,
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
                                  tooltip: t.home.open_linkedin,
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
                                  tooltip: t.home.open_github,
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
                                  tooltip: t.home.message_telegram,
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
                                  tooltip: t.home.follow_instagram,
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
