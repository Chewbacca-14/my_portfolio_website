import 'package:flutter/material.dart';

class SmoothScrollPhysics extends ScrollPhysics {
  const SmoothScrollPhysics({super.parent});

  @override
  SmoothScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return SmoothScrollPhysics(parent: buildParent(ancestor));
  }

  @override
  double getScrollSpeed() {
    return 0.25;
  }

  @override
  double frictionFactor(ScrollMetrics position) {
    return 0.5;
  }
}
