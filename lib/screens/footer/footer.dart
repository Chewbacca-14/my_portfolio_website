import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '© ${DateTime.now().year} Maxim Bulanovich | IČO 21886261 | Na Výsluní 317, 252 65 Tursko | Fyzická osoba zapsaná v Živnostenském rejstříku v Městském úřadu Černošice od 5. 8. 2024',
      style: TextStyle(
        color: Theme.of(context).colorScheme.shadow,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.center,
    );
  }
}
