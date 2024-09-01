import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tabnews/core/theme/extensions/theme_colors_extension.dart';
import 'package:tabnews/core/theme/theme_colors.dart';
import 'package:tabnews/core/theme/theme_metrics.dart';

enum AppThemeColors { modern, classical, black }

class AppTheme {
  const AppTheme({
    required this.isDark,
    required this.colors,
  });

  final bool isDark;
  final AppThemeColors colors;

  ThemeData get() {
    final theme = isDark ? ThemeData.dark() : ThemeData.light();
    final colors = _getColorScheme();
    final metrics = ThemeMetricsImpl.get(colors);

    return theme.copyWith(
      scaffoldBackgroundColor: colors.background,
      cardColor: colors.surface,
      dividerColor: colors.border,
      extensions: [colors, metrics],
      iconTheme: IconThemeData(color: colors.text),
      brightness: isDark ? Brightness.dark : Brightness.light,
      colorScheme: ColorScheme.fromSeed(
        seedColor: colors.primary,
        primary: colors.primary,
        onPrimary: colors.onPrimary,
        secondary: colors.secondary,
        onSecondary: colors.onSecondary,
        tertiary: colors.tertiary,
        onTertiary: colors.onTertiary,
        surface: colors.surface,
        surfaceTint: colors.surface,
        onSurface: colors.onSurface,
        error: colors.danger,
        onError: colors.onDanger,
        outline: colors.border,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: colors.secondary,
        surfaceTintColor: colors.secondary,
        foregroundColor: colors.onSecondary,
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

  ThemeColors _getColorScheme() {
    late ThemeColors colors;
    switch (this.colors) {
      case AppThemeColors.modern:
        colors = const ThemeLightColors();
        if (isDark) colors = const ThemeDarkColors();
      case AppThemeColors.classical:
        colors = const ThemeClassicalLightColors();
        if (isDark) colors = const ThemeClassicalDarkColors();
      case AppThemeColors.black:
        colors = const ThemeBlackColors();
    }

    return colors;
  }
}
