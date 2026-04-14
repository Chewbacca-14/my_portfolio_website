import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:my_portfolio_website/router.dart';

@RoutePage()
class AboutMeScreen extends StatefulWidget {
  const AboutMeScreen({super.key});

  @override
  State<AboutMeScreen> createState() => _AboutMeScreenState();
}

class _AboutMeScreenState extends State<AboutMeScreen> {
  late final Future<String> _aboutFuture = _loadAboutText();

  Future<String> _loadAboutText() async {
    try {
      final raw = await rootBundle.loadString('lib/about_me/about.json');
      final data = json.decode(raw);
      if (data is Map && data['about'] is String) {
        return data['about'] as String;
      }
      return 'About information unavailable.';
    } catch (_) {
      return 'Failed to load about text.';
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.secondary,
      appBar: AppBar(
        toolbarHeight: 86,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: theme.colorScheme.primary,
          ),
          onPressed: () {
            final canPop = context.router.canPop();
            if (canPop) {
              context.router.pop();
            } else {
              context.router.navigate(const HomeRoute());
            }
          },
        ),
        title: Text(
          'About Me',
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 32),
        child: Align(
          alignment: Alignment.topCenter,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 980),
            child: Container(
              padding: const EdgeInsets.all(28),
              decoration: BoxDecoration(
                color: theme.colorScheme.surface.withValues(alpha: 0.86),
                borderRadius: BorderRadius.circular(34),
                border: Border.all(color: theme.colorScheme.outline),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'A bit more about how I work',
                    style: theme.textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.w800,
                      letterSpacing: -1.2,
                    ),
                  ),
                  const SizedBox(height: 14),
                  Text(
                    'I care about performance, clear UX, maintainable architecture, and communication that keeps projects moving.',
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: theme.colorScheme.shadow,
                      height: 1.7,
                    ),
                  ),
                  const SizedBox(height: 24),
                  FutureBuilder<String>(
                    future: _aboutFuture,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 32),
                            child: CircularProgressIndicator(
                              color: theme.colorScheme.tertiary,
                            ),
                          ),
                        );
                      }

                      final text = snapshot.data ?? 'About information unavailable.';
                      return Text(
                        text,
                        style: theme.textTheme.bodyLarge?.copyWith(
                          color: theme.colorScheme.primary.withValues(alpha: 0.92),
                          height: 1.85,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
