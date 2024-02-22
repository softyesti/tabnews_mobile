import 'package:flutter/material.dart';

@immutable
base class ThemeColors extends ThemeExtension<ThemeColors> {
  const ThemeColors({
    required this.primary,
    required this.onPrimary,
    required this.secondary,
    required this.onSecondary,
    required this.tertiary,
    required this.onTertiary,
    required this.success,
    required this.onSuccess,
    required this.warning,
    required this.onWarning,
    required this.danger,
    required this.onDanger,
    required this.surface,
    required this.surfaceTint,
    required this.onSurface,
    required this.border,
    required this.shadow,
    required this.text,
    required this.textAlt,
    required this.background,
    required this.onBackground,
  });

  final Color primary;
  final Color onPrimary;
  final Color secondary;
  final Color onSecondary;
  final Color tertiary;
  final Color onTertiary;
  final Color success;
  final Color onSuccess;
  final Color warning;
  final Color onWarning;
  final Color danger;
  final Color onDanger;
  final Color surface;
  final Color surfaceTint;
  final Color onSurface;
  final Color border;
  final Color shadow;
  final Color text;
  final Color textAlt;
  final Color background;
  final Color onBackground;

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? primary,
    Color? onPrimary,
    Color? secondary,
    Color? onSecondary,
    Color? tertiary,
    Color? onTertiary,
    Color? success,
    Color? onSuccess,
    Color? warning,
    Color? onWarning,
    Color? danger,
    Color? onDanger,
    Color? surface,
    Color? surfaceTint,
    Color? onSurface,
    Color? border,
    Color? shadow,
    Color? text,
    Color? textAlt,
    Color? background,
    Color? onBackground,
  }) {
    return ThemeColors(
      primary: primary ?? this.primary,
      onPrimary: onPrimary ?? this.onPrimary,
      secondary: secondary ?? this.secondary,
      onSecondary: onSecondary ?? this.onSecondary,
      tertiary: tertiary ?? this.tertiary,
      onTertiary: onTertiary ?? this.onTertiary,
      success: success ?? this.success,
      onSuccess: onSuccess ?? this.onSuccess,
      warning: warning ?? this.warning,
      onWarning: onWarning ?? this.onWarning,
      danger: danger ?? this.danger,
      onDanger: onDanger ?? this.onDanger,
      surface: surface ?? this.surface,
      surfaceTint: surfaceTint ?? this.surfaceTint,
      onSurface: onSurface ?? this.onSurface,
      border: border ?? this.border,
      shadow: shadow ?? this.shadow,
      text: text ?? this.text,
      textAlt: textAlt ?? this.textAlt,
      background: background ?? this.background,
      onBackground: onBackground ?? this.onBackground,
    );
  }

  @override
  ThemeExtension<ThemeColors> lerp(
    covariant ThemeExtension<ThemeColors>? other,
    double t,
  ) {
    if (other is! ThemeColors) {
      return this;
    }

    return ThemeColors(
      primary: Color.lerp(primary, other.primary, t)!,
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      onSecondary: Color.lerp(onSecondary, other.onSecondary, t)!,
      tertiary: Color.lerp(tertiary, other.tertiary, t)!,
      onTertiary: Color.lerp(onTertiary, other.onTertiary, t)!,
      success: Color.lerp(success, other.success, t)!,
      onSuccess: Color.lerp(onSuccess, other.onSuccess, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      onWarning: Color.lerp(onWarning, other.onWarning, t)!,
      danger: Color.lerp(danger, other.danger, t)!,
      onDanger: Color.lerp(onDanger, other.onDanger, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      surfaceTint: Color.lerp(surfaceTint, other.surfaceTint, t)!,
      onSurface: Color.lerp(onSurface, other.onSurface, t)!,
      border: Color.lerp(border, other.border, t)!,
      shadow: Color.lerp(shadow, other.shadow, t)!,
      text: Color.lerp(text, other.text, t)!,
      textAlt: Color.lerp(textAlt, other.textAlt, t)!,
      background: Color.lerp(background, other.background, t)!,
      onBackground: Color.lerp(onBackground, other.onBackground, t)!,
    );
  }
}
