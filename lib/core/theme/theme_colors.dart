import 'package:flutter/material.dart';
import 'package:tabnews/core/theme/extensions/theme_colors_extension.dart';

final class ThemeLightColors extends ThemeColors {
  const ThemeLightColors({
    super.primary = const Color(0xFFFFFFFF),
    super.onPrimary = const Color(0xFFFFFFFF),
    super.secondary = const Color(0xFFFFFFFF),
    super.onSecondary = const Color(0xFFFFFFFF),
    super.tertiary = const Color(0xFFFFFFFF),
    super.onTertiary = const Color(0xFFFFFFFF),
    super.success = const Color(0xFFFFFFFF),
    super.onSuccess = const Color(0xFFFFFFFF),
    super.warning = const Color(0xFFFFFFFF),
    super.onWarning = const Color(0xFFFFFFFF),
    super.danger = const Color(0xFFFFFFFF),
    super.onDanger = const Color(0xFFFFFFFF),
    super.surface = const Color(0xFFFFFFFF),
    super.surfaceTint = const Color(0xFFFFFFFF),
    super.onSurface = const Color(0xFFFFFFFF),
    super.border = const Color(0xFFFFFFFF),
    super.shadow = const Color(0xFFFFFFFF),
    super.text = const Color(0xFFFFFFFF),
    super.textAlt = const Color(0xFFFFFFFF),
    super.background = const Color(0xFFFFFFFF),
    super.onBackground = const Color(0xFFFFFFFF),
  });
}

final class ThemeDarkColors extends ThemeColors {
  const ThemeDarkColors({
    super.primary = const Color(0xFF161B22),
    super.onPrimary = const Color(0xFFF2F2F2),
    super.secondary = const Color(0xFF000000),
    super.onSecondary = const Color(0xFF000000),
    super.tertiary = const Color(0xFF000000),
    super.onTertiary = const Color(0xFF000000),
    super.success = const Color(0xFF000000),
    super.onSuccess = const Color(0xFF000000),
    super.warning = const Color(0xFF000000),
    super.onWarning = const Color(0xFF000000),
    super.danger = const Color(0xFF000000),
    super.onDanger = const Color(0xFF000000),
    super.surface = const Color.fromRGBO(13, 17, 23, 0.8),
    super.surfaceTint = const Color(0xFF0D1117),
    super.onSurface = const Color(0xFFF2F2F2),
    super.border = const Color(0xFF212121),
    super.shadow = const Color(0xFF000000),
    super.text = const Color(0xFFF2F2F2),
    super.textAlt = const Color(0xFF000000),
    super.background = const Color(0xFF0D1117),
    super.onBackground = const Color(0xFFF2F2F2),
  });
}
