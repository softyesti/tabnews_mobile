import 'package:flutter/material.dart';
import 'package:tabnews/core/mixin/theme_mixin.dart';
import 'package:tabnews/core/widgets/spacer_widget.dart';
import 'package:tabnews/core/widgets/text_widget.dart';
import 'package:tabnews/core/widgets/touchable_widget.dart';

class RadioButtonWidget extends StatelessWidget with ThemeMixin {
  const RadioButtonWidget({
    required this.text,
    required this.isActive,
    this.onPressed,
    super.key,
  });

  final String text;
  final bool isActive;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final colors = getColors();
    final metrics = getMetrics();

    var color = Colors.transparent;
    var size = TextWidgetSizes.bodyMedium;
    if (isActive) {
      color = colors.border;
      size = TextWidgetSizes.titleMedium;
    }

    return TouchableWidget(
      onPressed: onPressed,
      child: Container(
        width: metrics.button.width,
        height: metrics.button.height,
        padding: metrics.buttonPadding,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(metrics.radius / 1.2),
        ),
        child: Row(
          children: [
            _IndicatorWidget(isActive: isActive),
            const SpacerWidget(
              direction: Axis.horizontal,
              size: SpacerWidgetSizes.small,
            ),
            TextWidget(text, size: size),
          ],
        ),
      ),
    );
  }
}

class _IndicatorWidget extends StatelessWidget with ThemeMixin {
  const _IndicatorWidget({required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final colors = getColors();
    final metrics = getMetrics();

    var color = colors.border;
    if (isActive) color = colors.primary;

    return Container(
      width: metrics.icon,
      height: metrics.icon,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(metrics.icon),
        border: Border.fromBorderSide(metrics.border.copyWith(color: color)),
      ),
      child: Visibility(
        visible: isActive,
        child: Container(
          decoration: BoxDecoration(
            color: colors.onPrimary,
            borderRadius: BorderRadius.circular(metrics.icon),
          ),
        ),
      ),
    );
  }
}
