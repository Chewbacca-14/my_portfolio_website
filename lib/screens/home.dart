import 'package:flutter/material.dart';
import 'package:my_portfolio_website/screens/about.dart';
import 'package:my_portfolio_website/utils/widgets/menu_tab.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                Text(
                  'Maxim Bulanovich',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.shadow,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                if (screenWidth > 600) ...[
                  const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      MenuTab('Experience'),
                      MenuTab('Projects'),
                      MenuTab('Skills'),
                    ],
                  ),
                ],
              ],
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 800,
            ),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 110),
                  AboutScreen(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
