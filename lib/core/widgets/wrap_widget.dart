import 'package:flutter/material.dart';
import 'package:tabnews/core/mixin/theme_mixin.dart';

class WrapWidget extends StatelessWidget with ThemeMixin {
  const WrapWidget({
    this.direction = Axis.vertical,
    this.children = const [],
    super.key,
  });

  final Axis direction;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final metrics = getMetrics();

    return Wrap(
      direction: direction,
      spacing: metrics.medium,
      runSpacing: metrics.medium,
      children: children,
    );
  }
}
