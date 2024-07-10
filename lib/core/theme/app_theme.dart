import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tabnews/core/theme/theme_colors.dart';
import 'package:tabnews/core/theme/theme_metrics.dart';

abstract class AppTheme {
  static ThemeData get({required bool isDark}) {
    final theme = isDark ? ThemeData.dark() : ThemeData.light();
    final colors = isDark ? const ThemeDarkColors() : const ThemeLightColors();
    final metrics = ThemeMetricsImpl.get(colors);

    return theme.copyWith(
      scaffoldBackgroundColor: colors.background,
      cardColor: colors.surface,
      shadowColor: colors.shadow,
      dividerColor: colors.border,
      extensions: [colors, metrics],
      iconTheme: IconThemeData(color: colors.text),
      brightness: isDark ? Brightness.dark : Brightness.light,
      colorScheme: ColorScheme.fromSeed(
        seedColor: colors.primary,
        primary: colors.primary,
        onPrimary: colors.primary,
        surface: colors.surface,
        onSurface: colors.surface,
        surfaceTint: colors.surfaceTint,
        error: colors.danger,
        onError: colors.danger,
        outline: colors.border,
        shadow: colors.shadow,
      ),
      appBarTheme: AppBarTheme(
        shadowColor: colors.shadow,
        foregroundColor: colors.onBackground,
        backgroundColor: colors.background,
      ),
      textTheme: GoogleFonts.interTextTheme(theme.textTheme).copyWith(
        bodySmall: GoogleFonts.inter(
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: colors.text,
        ),
        bodyMedium: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: colors.text,
        ),
        bodyLarge: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: colors.text,
        ),
        titleSmall: GoogleFonts.inter(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: colors.text,
        ),
        titleMedium: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: colors.text,
        ),
        titleLarge: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: colors.text,
        ),
        headlineSmall: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: colors.text,
        ),
        headlineMedium: GoogleFonts.inter(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: colors.text,
        ),
        headlineLarge: GoogleFonts.inter(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: colors.text,
        ),
      ),
    );
  }
}
