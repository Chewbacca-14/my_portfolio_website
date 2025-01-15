import 'package:flutter/material.dart';

class SquareButton extends StatelessWidget {
  final void Function()? onTap;
  final String imageUrl;
  const SquareButton({
    super.key,
    this.onTap,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 38,
        width: 35.50,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: Theme.of(context).colorScheme.primary,
            width: 0.7,
          ),
        ),
        child: Center(
          child: Image.asset(
            imageUrl,
            color: Theme.of(context).colorScheme.primary,
            width: 17,
            height: 17,
          ),
        ),
      ),
    );
  }
}
