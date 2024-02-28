import 'package:flutter/material.dart';
import 'package:tabnews/core/mixin/theme_mixin.dart';

class WrapWidget extends StatelessWidget with ThemeMixin {
  const WrapWidget({
    this.direction = Axis.vertical,
    this.spacing = WrapWidgetSpacings.medium,
    this.children = const [],
    super.key,
  });

  final Axis direction;
  final WrapWidgetSpacings spacing;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final metrics = getMetrics();

    late double value;
    switch (spacing) {
      case WrapWidgetSpacings.small:
        value = metrics.small;
      case WrapWidgetSpacings.medium:
        value = metrics.medium;
      case WrapWidgetSpacings.large:
        value = metrics.large;
    }

    return Wrap(
      direction: direction,
      spacing: value,
      runSpacing: value,
      children: children,
    );
  }
}

enum WrapWidgetSpacings {
  small,
  medium,
  large,
}
