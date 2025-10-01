import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_portfolio_website/models/blog_model.dart';
import 'dart:html' as html;

class BlogTile extends StatelessWidget {
  final Blog blog;
  const BlogTile({super.key, required this.blog});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    bool isMobileScreen = screenWidth < 600;
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () {
        html.window.open(blog.url, '_blank');
      },
      child: Container(
        color: Colors.transparent,
        child: !isMobileScreen
            ? Row(
                spacing: 20,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildImage(
                    context,
                    imageWidth: 266,
                    imageHeight: 150,
                  ),
                  Expanded(
                    child: _buildTitle(context),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.shadow.withValues(alpha: 0.5),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Theme.of(context).colorScheme.primary,
                        size: 16,
                      ),
                    ),
                  ),
                ],
              )
            : Column(
                spacing: 20,
                children: [
                  _buildImage(
                    context,
                    imageWidth: screenWidth,
                    imageHeight: 200,
                  ),
                  _buildTitle(context),
                ],
              ),
      ),
    );
  }

  Widget _buildImage(BuildContext context, {required double imageWidth, required double imageHeight}) {
    return Container(
      width: imageWidth,
      height: imageHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Theme.of(context).colorScheme.primary,
          width: 1,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: CachedNetworkImage(
          imageUrl: blog.networkImageUrl,
          fit: BoxFit.fill,
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(),
          ),
          errorWidget: (context, url, error) => Center(
            child: Tooltip(
              message: 'Failed to load image $error',
              child: const Icon(
                Icons.error,
                color: Colors.red,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          Text(
            blog.title,
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            blog.description,
            style: TextStyle(
              color: Theme.of(context).colorScheme.shadow,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            DateFormat('dd MMMM yyyy').format(blog.date),
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
