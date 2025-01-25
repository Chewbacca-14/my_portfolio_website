import 'package:animated_text_lerp/animated_text_lerp.dart';
import 'package:flutter/material.dart';

class StatsValueContainer extends StatefulWidget {
  final int value;
  final String suffix;

  const StatsValueContainer(
    this.value, {
    super.key,
    required this.suffix,
  });

  @override
  State<StatsValueContainer> createState() => _StatsValueContainerState();
}

class _StatsValueContainerState extends State<StatsValueContainer> {
  int _value = 0;

  @override
  void initState() {
    super.initState();
    for (int i = 0; i <= widget.value; i++) {
      Future.delayed(
        const Duration(milliseconds: 50),
        () {
          setState(() {
            _value = i;
          });
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedNumberText(
          _value,
          curve: Curves.easeIn,
          duration: const Duration(seconds: 1),
          style: TextStyle(
            fontSize: 33,
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          widget.suffix,
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
