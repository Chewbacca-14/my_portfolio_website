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

  void onEnter() {
    setState(() {
      isHover = true;
    });
  }

  void onExit() {
    setState(
      () {
        isHover = false;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (isHovering) {
        isHovering ? onEnter() : onExit();
      },
      child: Tooltip(
        message: widget.tooltip,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: 38,
          width: 35.50,
          decoration: BoxDecoration(
            color: isHover ? Theme.of(context).colorScheme.shadow.withValues(alpha: 0.3) : Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(6),
            border: Border.all(
              color: Theme.of(context).colorScheme.primary,
              width: 0.7,
            ),
          ),
          child: Center(
            child: Image(
              image: AssetImage(widget.imageUrl),
              width: 17,
              height: 17,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
