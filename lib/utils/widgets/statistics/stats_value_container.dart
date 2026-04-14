import 'package:flutter/material.dart';

class StatsValueContainer extends StatelessWidget {
  final double value;
  final String suffix;
  final bool showPlus;

  const StatsValueContainer(
    this.value, {
    super.key,
    required this.suffix,
    this.showPlus = true,
  });

  String get displayValue {
    String baseValue;
    if (value == value.roundToDouble()) {
      baseValue = value.toInt().toString();
    } else {
      baseValue = value.toStringAsFixed(1);
    }
    return showPlus ? '$baseValue+' : baseValue;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return LayoutBuilder(
      builder: (context, constraints) {
        final isCompact = constraints.maxWidth < 170;
        return Container(
          width: double.infinity,
          padding: EdgeInsets.all(isCompact ? 18 : 20),
          decoration: BoxDecoration(
            color: theme.colorScheme.secondary.withValues(alpha: 0.75),
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: theme.colorScheme.outline),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                displayValue,
                style: theme.textTheme.headlineMedium?.copyWith(
                  fontSize: isCompact ? 26 : null,
                  fontWeight: FontWeight.w800,
                  letterSpacing: -1.2,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                suffix,
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontSize: isCompact ? 13 : null,
                  color: theme.colorScheme.shadow,
                  fontWeight: FontWeight.w700,
                  height: 1.45,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
