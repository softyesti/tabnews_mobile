import 'package:flutter/material.dart';
import 'package:tabnews/core/mixin/theme_mixin.dart';
import 'package:tabnews/core/widgets/card_widget.dart';
import 'package:tabnews/core/widgets/safe_area_widget.dart';
import 'package:tabnews/core/widgets/spacer_widget.dart';

class BottomSheetWidget extends StatelessWidget with ThemeMixin {
  const BottomSheetWidget({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final metrics = getMetrics();

    return CardWidget(
      width: double.infinity,
      border: Border(top: metrics.border),
      padding: EdgeInsets.all(metrics.medium).copyWith(top: metrics.small),
      child: SafeAreaWidget(
        bottom: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const _HandleWidget(),
            const SpacerWidget(),
            Flexible(child: child),
          ],
        ),
      ),
    );
  }
}

class _HandleWidget extends StatelessWidget with ThemeMixin {
  const _HandleWidget();

  @override
  Widget build(BuildContext context) {
    final colors = getColors();

    return Center(
      child: Container(
        width: 40,
        height: 4,
        decoration: BoxDecoration(
          color: colors.border,
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}
