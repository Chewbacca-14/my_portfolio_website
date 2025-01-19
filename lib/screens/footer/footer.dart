import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '© 2025 Maxim Bulanovich | IČO 21886261 | Modřínová 2011, 253 01 Hostivice | Fyzická osoba zapsaná v Živnostenském rejstříku v Městském úřadu Černošice od 5. 8. 2024',
      style: TextStyle(
        color: Theme.of(context).colorScheme.shadow,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.center,
    );
  }
}
