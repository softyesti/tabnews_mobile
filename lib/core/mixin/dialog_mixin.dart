import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabnews/core/theme/extensions/theme_metrics_extension.dart';
import 'package:tabnews/core/widgets/bottomsheet_widget.dart';

mixin DialogMixin {
  Future<void> openBottomSheet({
    required String name,
    required Widget child,
  }) async {
    final metrics = Get.context!.theme.extension<ThemeMetrics>()!;

    await Get.bottomSheet<void>(
      BottomSheetWidget(child: child),
      exitBottomSheetDuration: metrics.duration,
      enterBottomSheetDuration: metrics.duration,
      settings: RouteSettings(name: '${name}_bottom_sheet'),
    );
  }
}
