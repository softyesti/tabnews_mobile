import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tabnews/core/mixin/theme_mixin.dart';

class SafeAreaWidget extends StatelessWidget with ThemeMixin {
  const SafeAreaWidget({
    required this.child,
    this.top = false,
    this.bottom = false,
    this.left = false,
    this.right = false,
    super.key,
  });

  final bool top;
  final bool bottom;
  final bool left;
  final bool right;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final metrics = getMetrics();

    var padding = EdgeInsets.zero;
    if (Platform.isAndroid) {
      padding = padding.copyWith(
        top: top ? metrics.medium : 0,
        bottom: bottom ? metrics.medium : 0,
        left: left ? metrics.medium : 0,
        right: right ? metrics.medium : 0,
      );
    }

    return SafeArea(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: Padding(padding: padding, child: child),
    );
  }
}
