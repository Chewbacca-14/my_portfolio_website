import 'package:flutter/material.dart';
import 'package:my_portfolio_website/models/blog_model.dart';
import 'package:my_portfolio_website/utils/widgets/blog_tile.dart';
part 'blog_list.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 24,
      children: blog.map((blog) => BlogTile(blog: blog)).toList(),
    );
  }
}
