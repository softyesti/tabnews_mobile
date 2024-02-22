import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:tabnews/core/mixin/theme_mixin.dart';
import 'package:tabnews/core/widgets/blur_widget.dart';
import 'package:tabnews/core/widgets/button/icon_button_widget.dart';
import 'package:tabnews/core/widgets/text_widget.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({
    this.showLeading = false,
    this.title,
    this.scrollController,
    super.key,
  });

  final bool showLeading;
  final String? title;
  final ScrollController? scrollController;

  @override
  State<StatefulWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> with ThemeMixin {
  bool isBlurEnabled = false;

  @override
  void initState() {
    super.initState();

    if (widget.scrollController == null) {
      isBlurEnabled = true;
    } else {
      isBlurEnabled = false;
    }

    widget.scrollController?.addListener(() {
      if (widget.scrollController!.position.pixels > 24) {
        setState(() => isBlurEnabled = true);
      } else {
        setState(() => isBlurEnabled = false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final metrics = getMetrics();

    final titleSpacing = -NavigationToolbar.kMiddleSpacing + metrics.medium;

    return BlurWidget(
      isEnabled: isBlurEnabled,
      child: AppBar(
        forceMaterialTransparency: true,
        automaticallyImplyLeading: false,
        centerTitle: false,
        titleSpacing: widget.showLeading ? titleSpacing : null,
        leading: widget.showLeading ? const _LeadingWidget() : null,
        title: widget.title != null
            ? TextWidget(widget.title!, size: TextWidgetSizes.headlineLarge)
            : null,
      ),
    );
  }
}

class _LeadingWidget extends StatelessWidget with ThemeMixin {
  const _LeadingWidget();

  @override
  Widget build(Object context) {
    final metrics = getMetrics();

    late IconData icon;
    if (Platform.isAndroid) {
      icon = Ionicons.arrow_back_outline;
    } else {
      icon = Ionicons.chevron_back_outline;
    }

    return IconButtonWidget(
      icon: icon,
      iconSize: metrics.icon * 1.4,
      onPressed: () => Get.back<void>(),
    );
  }
}
