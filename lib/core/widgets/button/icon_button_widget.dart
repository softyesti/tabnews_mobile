import 'package:flutter/material.dart';
import 'package:tabnews/core/mixin/theme_mixin.dart';
import 'package:tabnews/core/widgets/icon_widget.dart';
import 'package:tabnews/core/widgets/touchable_widget.dart';

class IconButtonWidget extends StatelessWidget with ThemeMixin {
  const IconButtonWidget({
    required this.icon,
    this.iconSize,
    this.onPressed,
    super.key,
  });

  final IconData icon;
  final double? iconSize;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TouchableWidget(
      onPressed: onPressed,
      child: IconWidget(
        icon,
        size: iconSize,
      ),
    );
  }
}
