import 'package:flutter/material.dart';

enum NavItems { home, experience, projects, skills, blog }

class NavProvider extends ChangeNotifier {
  final ScrollController scrollController = ScrollController();

  final experience = GlobalKey();
  final projects = GlobalKey();
  final skills = GlobalKey();
  final blog = GlobalKey();

  void scrollTo(NavItems item) {
    if (item == NavItems.home) {
      scrollController.animateTo(
        0,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    } else {
      final keyContext = _keyContext(item);
      if (keyContext != null) {
        final RenderBox renderBox = keyContext.findRenderObject() as RenderBox;
        final scrollableBox = scrollController.position.context.storageContext.findRenderObject() as RenderBox;

        final offset = renderBox.localToGlobal(Offset.zero, ancestor: scrollableBox);
        final dy = scrollController.offset + offset.dy;

        scrollController.animateTo(
          dy - 30,
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
      }
    }
  }

  BuildContext? _keyContext(NavItems item) {
    switch (item) {
      case NavItems.experience:
        return experience.currentContext;
      case NavItems.projects:
        return projects.currentContext;
      case NavItems.skills:
        return skills.currentContext;
      case NavItems.blog:
        return blog.currentContext;
      default:
        return null;
    }
  }
}
