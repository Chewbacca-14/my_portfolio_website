import 'package:flutter/material.dart';
import 'package:my_portfolio_website/providers/theme_provider.dart';
import 'package:my_portfolio_website/screens/home.dart';
import 'package:my_portfolio_website/theme/dark_theme.dart';
import 'package:my_portfolio_website/theme/light_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeNotifier(),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, notifier, child) => MaterialApp(
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: notifier.themeMode,
        home: const HomeScreen(),
      ),
    );
  }
}
