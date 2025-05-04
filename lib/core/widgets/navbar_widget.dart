import 'package:flutter/material.dart';
import 'package:tabnews/core/mixin/theme_mixin.dart';
import 'package:tabnews/core/widgets/blur_widget.dart';
import 'package:tabnews/core/widgets/icon_widget.dart';
import 'package:tabnews/core/widgets/safe_area_widget.dart';
import 'package:tabnews/core/widgets/text_widget.dart';
import 'package:tabnews/core/widgets/touchable_widget.dart';

class NavBarWidget extends StatelessWidget with ThemeMixin {
  const NavBarWidget({
    required this.items,
    required this.onPressed,
    this.current = 0,
    super.key,
  });

  final int current;
  final List<NavBarWidgetItem> items;
  final void Function(int current) onPressed;

  @override
  Widget build(BuildContext context) {
    final colors = getColors();
    final metrics = getMetrics();

    return BlurWidget(
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: metrics.small,
          horizontal: metrics.medium,
        ),
        color: colors.secondary,
        child: SafeAreaWidget(
          bottom: true,
          child: _ChildWidget(
            items: items,
            current: current,
            onPressed: onPressed,
          ),
        ),
      ),
    );
  }
}

class NavBarWidgetItem {
  const NavBarWidgetItem({
    required this.icon,
    required this.activeIcon,
    required this.label,
  });

  final IconData icon;
  final IconData activeIcon;
  final String label;
}

class _ChildWidget extends StatelessWidget {
  const _ChildWidget({
    required this.items,
    required this.current,
    required this.onPressed,
  });

  final int current;
  final List<NavBarWidgetItem> items;
  final void Function(int current) onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        items.length,
        (index) {
          final item = items[index];
          return _NavBarItemWidget(
            item: item,
            isActive: current == index,
            onPressed: () => onPressed(index),
          );
        },
      ),
    );
  }
}

class _NavBarItemWidget extends StatelessWidget with ThemeMixin {
  const _NavBarItemWidget({
    required this.item,
    required this.isActive,
    required this.onPressed,
  });

  final bool isActive;
  final NavBarWidgetItem item;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final colors = getColors();
    final metrics = getMetrics();

    var icon = item.icon;
    var color = colors.textAlt;
    const size = TextWidgetSizes.bodySmall;

    if (isActive) {
      icon = item.activeIcon;
      color = colors.primary;
    }

    return TouchableWidget(
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconWidget(icon, color: color, size: metrics.icon * 1.1),
          TextWidget(item.label, size: size, color: color),
        ],
      ),
    );
  }
}
