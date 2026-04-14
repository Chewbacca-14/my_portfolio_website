import 'package:flutter/material.dart';

class SquareButton extends StatefulWidget {
  final void Function()? onTap;
  final String imageUrl;
  final String? tooltip;

  const SquareButton({
    super.key,
    this.onTap,
    required this.imageUrl,
    this.tooltip,
  });

  @override
  State<SquareButton> createState() => _SquareButtonState();
}

class _SquareButtonState extends State<SquareButton> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Tooltip(
      message: widget.tooltip,
      child: InkWell(
        onTap: widget.onTap,
        borderRadius: BorderRadius.circular(18),
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          curve: Curves.easeOut,
          height: 48,
          width: 48,
          decoration: BoxDecoration(
            color: isHover ? theme.colorScheme.tertiary.withValues(alpha: 0.12) : theme.colorScheme.surface.withValues(alpha: 0.72),
            borderRadius: BorderRadius.circular(18),
            border: Border.all(
              color: isHover ? theme.colorScheme.tertiary : theme.colorScheme.outline,
            ),
            boxShadow: [
              if (isHover)
                BoxShadow(
                  color: theme.colorScheme.tertiary.withValues(alpha: 0.14),
                  blurRadius: 18,
                  offset: const Offset(0, 8),
                ),
            ],
          ),
          child: Center(
            child: Image.asset(
              widget.imageUrl,
              width: 18,
              height: 18,
              color: theme.colorScheme.primary,
            ),
          ),
        ),
      ),
    );
  }
}
