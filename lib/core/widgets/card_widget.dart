import 'package:flutter/material.dart';
import 'package:tabnews/core/mixin/theme_mixin.dart';
import 'package:tabnews/core/widgets/padding_widget.dart';

class CardWidget extends StatelessWidget with ThemeMixin {
  const CardWidget({
    required this.child,
    this.size,
    super.key,
  });

  final Widget child;
  final Size? size;

  @override
  Widget build(BuildContext context) {
    final colors = getColors();
    final metrics = getMetrics();

    return Card(
      color: colors.surface,
      surfaceTintColor: colors.surfaceTint,
      shadowColor: colors.shadow,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(metrics.radius),
        side: metrics.border,
      ),
      child: PaddingWidget(child: child),
    );
  }
}
