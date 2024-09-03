import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:tabnews/core/mixin/theme_mixin.dart';
import 'package:tabnews/core/widgets/blur_widget.dart';
import 'package:tabnews/core/widgets/button/icon_button_widget.dart';
import 'package:tabnews/core/widgets/safe_area_widget.dart';
import 'package:tabnews/core/widgets/text_widget.dart';
import 'package:tabnews/core/widgets/wrap_widget.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({
    this.title,
    this.scrollController,
    this.actions = const [],
    this.showLeading = false,
    super.key,
  });

  final String? title;
  final bool showLeading;
  final List<Widget> actions;
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
    final colors = getColors();
    final metrics = getMetrics();

    return BlurWidget(
      isEnabled: isBlurEnabled,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: metrics.medium)
            .copyWith(bottom: metrics.small),
        color: colors.secondary,
        child: SafeAreaWidget(
          top: true,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (widget.showLeading) const _LeadingWidget(),
              if (widget.title != null)
                TextWidget(
                  widget.title!,
                  color: colors.onSecondary,
                  size: TextWidgetSizes.headlineLarge,
                ),
              WrapWidget(
                direction: Axis.horizontal,
                alignment: WrapAlignment.end,
                children: widget.actions,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LeadingWidget extends StatelessWidget with ThemeMixin {
  const _LeadingWidget();

  @override
  Widget build(Object context) {
    final colors = getColors();
    final metrics = getMetrics();

    var icon = Ionicons.arrow_back_outline;
    if (Platform.isIOS) icon = Ionicons.chevron_back_outline;

    return IconButtonWidget(
      icon: icon,
      fgColor: colors.onSecondary,
      iconSize: metrics.icon * 1.2,
      onPressed: () => Get.back<void>(),
    );
  }
}
