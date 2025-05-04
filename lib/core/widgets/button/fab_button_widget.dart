import 'package:flutter/widgets.dart';
import 'package:tabnews/core/mixin/theme_mixin.dart';
import 'package:tabnews/core/widgets/button/icon_button_widget.dart';

class FabButtonWidget extends StatelessWidget with ThemeMixin {
  const FabButtonWidget({
    required this.icon,
    this.onPressed,
    super.key,
  });

  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final colors = getColors();
    final metrics = getMetrics();

    return IconButtonWidget(
      icon: icon,
      isFilled: true,
      onPressed: onPressed,
      bgColor: colors.tertiary,
      fgColor: colors.onTertiary,
      padding: EdgeInsets.all(metrics.medium / 1.4),
    );
  }
}
