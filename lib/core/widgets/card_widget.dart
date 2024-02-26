import 'package:flutter/material.dart';
import 'package:tabnews/core/mixin/theme_mixin.dart';
import 'package:tabnews/core/widgets/padding_widget.dart';

class CardWidget extends StatelessWidget with ThemeMixin {
  const CardWidget({
    required this.child,
    this.padding,
    this.borderRadius,
    this.color,
    super.key,
  });

  final Widget child;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final colors = getColors();
    final metrics = getMetrics();

    return Card(
      color: color ?? colors.surface,
      surfaceTintColor: colors.surfaceTint,
      shadowColor: colors.shadow,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? BorderRadius.all(metrics.radius),
        side: metrics.border,
      ),
      child: PaddingWidget(
        padding: padding,
        child: child,
      ),
    );
  }
}
