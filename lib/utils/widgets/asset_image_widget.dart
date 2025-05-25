import 'package:flutter/material.dart';

class AssetImageWithPlaceholder extends StatefulWidget {
  final String assetPath;
  final double width;
  final double height;
  final BoxFit fit;

  const AssetImageWithPlaceholder({
    super.key,
    required this.assetPath,
    this.width = 100,
    this.height = 100,
    this.fit = BoxFit.cover,
  });

  @override
  State<AssetImageWithPlaceholder> createState() => _AssetImageWithPlaceholderState();
}

class _AssetImageWithPlaceholderState extends State<AssetImageWithPlaceholder> {
  bool _hasError = false;

  @override
  Widget build(BuildContext context) {
    if (_hasError) {
      return const Center(
        child: Tooltip(
          message: 'Failed to load image',
          child: Icon(
            Icons.error,
            color: Colors.red,
          ),
        ),
      );
    }

    return Image(
      image: AssetImage(widget.assetPath),
      width: widget.width,
      height: widget.height,
      fit: widget.fit,
      errorBuilder: (context, error, stackTrace) {
        setState(() {
          _hasError = true;
        });
        return const SizedBox.shrink();
      },
    );
  }
}
