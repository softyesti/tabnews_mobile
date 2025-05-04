import 'package:flutter/material.dart';
import 'package:tabnews/core/mixin/theme_mixin.dart';

class TextWidget extends StatelessWidget with ThemeMixin {
  const TextWidget(
    this.text, {
    this.maxLines = 1,
    this.size = TextWidgetSizes.bodyMedium,
    this.color,
    super.key,
  });

  final String text;
  final int maxLines;
  final TextWidgetSizes size;
  final Color? color;

  @override
  Widget build(Object context) {
    final theme = getTheme();
    final colors = getColors();

    late TextStyle ts;
    switch (size) {
      case TextWidgetSizes.bodySmall:
        ts = theme.textTheme.bodySmall!;
      case TextWidgetSizes.bodyMedium:
        ts = theme.textTheme.bodyMedium!;
      case TextWidgetSizes.bodyLarge:
        ts = theme.textTheme.bodyLarge!;
      case TextWidgetSizes.titleSmall:
        ts = theme.textTheme.titleSmall!;
      case TextWidgetSizes.titleMedium:
        ts = theme.textTheme.titleMedium!;
      case TextWidgetSizes.titleLarge:
        ts = theme.textTheme.titleLarge!;
      case TextWidgetSizes.headlineSmall:
        ts = theme.textTheme.headlineSmall!;
      case TextWidgetSizes.headlineMedium:
        ts = theme.textTheme.headlineMedium!;
      case TextWidgetSizes.headlineLarge:
        ts = theme.textTheme.headlineLarge!;
    }

    return Text(
      text,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: ts.copyWith(color: color ?? colors.text),
    );
  }
}

enum TextWidgetSizes {
  bodySmall,
  bodyMedium,
  bodyLarge,
  titleSmall,
  titleMedium,
  titleLarge,
  headlineSmall,
  headlineMedium,
  headlineLarge,
}
