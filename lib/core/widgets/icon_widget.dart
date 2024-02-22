import 'package:flutter/material.dart';
import 'package:tabnews/core/mixin/theme_mixin.dart';

class IconWidget extends StatelessWidget with ThemeMixin {
  const IconWidget(
    this.icon, {
    this.size,
    super.key,
  });

  final IconData icon;
  final double? size;

  @override
  Widget build(BuildContext context) {
    final colors = getColors();
    final metrics = getMetrics();

    return Icon(
      icon,
      color: colors.text,
      size: size ?? metrics.icon,
    );
  }
}
