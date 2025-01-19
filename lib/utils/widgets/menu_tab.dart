import 'package:flutter/material.dart';

class MenuTab extends StatefulWidget {
  final String title;
  final void Function()? onTap;

  const MenuTab(
    this.title, {
    super.key,
    this.onTap,
  });

  @override
  State<MenuTab> createState() => _MenuTabState();
}

class _MenuTabState extends State<MenuTab> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 11),
      child: InkWell(
        onTap: widget.onTap,
        child: TextButton(
          onPressed: widget.onTap,
          onHover: (value) {
            setState(() {
              isHover = value;
            });
          },
          child: Text(
            widget.title,
            style: TextStyle(
              color: isHover ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.shadow,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
