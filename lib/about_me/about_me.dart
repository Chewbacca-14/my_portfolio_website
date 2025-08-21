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
    } catch (e) {
      return 'Failed to load about text.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).colorScheme.primary,
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
          style: TextStyle(
            color: Theme.of(context).colorScheme.shadow,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            width: 900,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage(
                      'me2.jpg',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FutureBuilder<String>(
                    future: _aboutFuture,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(
                          child: CircularProgressIndicator(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        );
                      }
                      final text = snapshot.data ?? 'About information unavailable.';
                      return SingleChildScrollView(
                        child: Text(
                          text,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            height: 1.4,
                          ),
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
