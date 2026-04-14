import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      '© ${DateTime.now().year} Maxim Bulanovich | ICO 21886261 | Na Vysluni 317, 252 65 Tursko | Registered as a sole trader in the Czech Trade Register since 5 Aug 2024',
      style: theme.textTheme.bodySmall?.copyWith(
        color: theme.colorScheme.shadow,
        height: 1.7,
        fontWeight: FontWeight.w600,
      ),
      textAlign: TextAlign.center,
    );
  }
}
