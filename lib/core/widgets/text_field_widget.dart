import 'package:flutter/material.dart';
import 'package:tabnews/core/mixin/theme_mixin.dart';

class TextFieldWidget extends StatelessWidget with ThemeMixin {
  const TextFieldWidget({
    required this.hintText,
    this.keyboardType = TextInputType.multiline,
    this.textAlignVertical = TextAlignVertical.center,
    this.expands = false,
    this.controller,
    this.maxLines,
    super.key,
  });

  final String hintText;
  final TextInputType keyboardType;
  final TextAlignVertical textAlignVertical;
  final bool expands;
  final TextEditingController? controller;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    final theme = getTheme();
    final colors = getColors();
    final metrics = getMetrics();

    final border = OutlineInputBorder(
      borderRadius: BorderRadius.all(metrics.radius / 1.2),
      borderSide: metrics.border,
    );

    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      keyboardAppearance: theme.brightness,
      style: theme.textTheme.bodyMedium,
      maxLines: maxLines,
      expands: expands,
      textAlignVertical: textAlignVertical,
      decoration: InputDecoration(
        filled: true,
        isDense: true,
        hintText: hintText,
        hintStyle: theme.textTheme.bodyMedium?.copyWith(
          color: colors.onSurface.withOpacity(0.6),
        ),
        fillColor: colors.surface,
        iconColor: colors.onSurface,
        prefixIconColor: colors.onSurface,
        suffixIconColor: colors.onSurface,
        contentPadding: metrics.fieldPadding,
        border: border,
        enabledBorder: border,
        focusedBorder: border.copyWith(
          borderSide: border.borderSide.copyWith(color: colors.primary),
        ),
        errorBorder: border.copyWith(
          borderSide: border.borderSide.copyWith(color: colors.danger),
        ),
        focusedErrorBorder: border.copyWith(
          borderSide: border.borderSide.copyWith(color: colors.danger),
        ),
      ),
    );
  }
}
