import 'package:flutter/material.dart';
import 'package:tabnews/core/theme/extensions/theme_colors_extension.dart';
import 'package:tabnews/core/theme/extensions/theme_metrics_extension.dart';

final class ThemeMetricsImpl extends ThemeMetrics {
  const ThemeMetricsImpl({
    super.small = 8,
    super.medium = 16,
    super.large = 24,
    super.icon = 18,
    super.blur = 24,
    super.border = const BorderSide(),
    super.radius = const Radius.circular(16),
    super.shadow = const BoxShadow(),
    super.header = Size.zero,
    super.footer = Size.zero,
    super.button = Size.zero,
    super.buttonPadding = const EdgeInsets.symmetric(
      vertical: 4,
      horizontal: 8,
    ),
    super.field = Size.zero,
    super.fieldPadding = const EdgeInsets.symmetric(
      vertical: 10,
      horizontal: 12,
    ),
    super.curve = Curves.linear,
    super.duration = const Duration(milliseconds: 200),
  });

  // ignore: avoid_unused_constructor_parameters
  factory ThemeMetricsImpl.get(ThemeColors colors) {
    return const ThemeMetricsImpl(border: BorderSide.none);
  }
}
