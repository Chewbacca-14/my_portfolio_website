import 'package:flutter/material.dart';

class StatsValueContainer extends StatelessWidget {
  final double value;
  final String suffix;

  const StatsValueContainer(
    this.value, {
    super.key,
    required this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          value.toString(),
          style: TextStyle(
            fontSize: 33,
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          suffix,
          style: TextStyle(
            fontSize: 22,
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
