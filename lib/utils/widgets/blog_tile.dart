import 'dart:html' as html;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_portfolio_website/models/blog_model.dart';

class BlogTile extends StatelessWidget {
  final Blog blog;

  const BlogTile({super.key, required this.blog});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobileScreen = screenWidth < 760;

    return InkWell(
      borderRadius: BorderRadius.circular(28),
      onTap: () {
        html.window.open(blog.url, '_blank');
      },
      child: Ink(
        padding: const EdgeInsets.all(22),
        decoration: BoxDecoration(
          color: theme.colorScheme.secondary.withValues(alpha: 0.6),
          borderRadius: BorderRadius.circular(28),
          border: Border.all(color: theme.colorScheme.outline),
        ),
        child: !isMobileScreen
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildImage(
                    context,
                    imageWidth: 280,
                    imageHeight: 170,
                  ),
                  const SizedBox(width: 24),
                  Expanded(child: _buildContent(context)),
                  const SizedBox(width: 16),
                  Container(
                    height: 46,
                    width: 46,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.tertiary.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Icon(
                      Icons.arrow_outward,
                      color: theme.colorScheme.tertiary,
                    ),
                  ),
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildImage(
                    context,
                    imageWidth: screenWidth,
                    imageHeight: 210,
                  ),
                  const SizedBox(height: 18),
                  _buildContent(context),
                ],
              ),
      ),
    );
  }

  Widget _buildImage(BuildContext context, {required double imageWidth, required double imageHeight}) {
    final theme = Theme.of(context);
    return Container(
      width: imageWidth,
      height: imageHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: theme.colorScheme.outline),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: CachedNetworkImage(
          imageUrl: blog.networkImageUrl,
          fit: BoxFit.cover,
          placeholder: (context, url) => Center(
            child: CircularProgressIndicator(
              color: theme.colorScheme.tertiary,
            ),
          ),
          errorWidget: (context, url, error) => Tooltip(
            message: 'Failed to load image: $error',
            child: Center(
              child: Icon(
                Icons.error_outline,
                color: theme.colorScheme.tertiary,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          DateFormat('dd MMM yyyy').format(blog.date).toUpperCase(),
          style: theme.textTheme.labelLarge?.copyWith(
            color: theme.colorScheme.tertiary,
            fontWeight: FontWeight.w800,
            letterSpacing: 1.1,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          blog.title,
          style: theme.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.w800,
            letterSpacing: -0.8,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          blog.description,
          style: theme.textTheme.bodyLarge?.copyWith(
            color: theme.colorScheme.shadow,
            height: 1.65,
          ),
        ),
      ],
    );
  }
}
