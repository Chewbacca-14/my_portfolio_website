import 'package:flutter/material.dart';

class MenuTab extends StatelessWidget {
  final String title;
  final void Function()? onTap;

  const MenuTab(
    this.title, {
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 11),
      child: InkWell(
        onTap: onTap,
        child: Text(
          title,
          style: TextStyle(
            color: Theme.of(context).colorScheme.shadow,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
