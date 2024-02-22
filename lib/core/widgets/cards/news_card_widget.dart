import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:tabnews/core/mixin/theme_mixin.dart';
import 'package:tabnews/core/widgets/button/icon_button_widget.dart';
import 'package:tabnews/core/widgets/card_widget.dart';
import 'package:tabnews/core/widgets/spacer_widget.dart';
import 'package:tabnews/core/widgets/text_widget.dart';
import 'package:tabnews/core/widgets/touchable_widget.dart';

class NewsCardWidget extends StatelessWidget {
  const NewsCardWidget({
    required this.title,
    required this.summary,
    this.onPressed,
    this.onCommentPressed,
    this.onUpperPressed,
    this.onDownPressed,
    super.key,
  });

  final String title;
  final String summary;
  final void Function()? onPressed;
  final void Function()? onCommentPressed;
  final void Function()? onUpperPressed;
  final void Function()? onDownPressed;

  @override
  Widget build(BuildContext context) {
    return TouchableWidget(
      onPressed: onPressed,
      child: CardWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _TitleWidget(title: title),
                _SummaryWidget(summary: summary),
              ],
            ),
            const SpacerWidget(),
            _ActionsWidget(
              onCommentPressed: onCommentPressed,
              onUpperPressed: onUpperPressed,
              onDownPressed: onDownPressed,
            ),
          ],
        ),
      ),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return TextWidget(
      title,
      size: TextWidgetSizes.titleLarge,
    );
  }
}

class _SummaryWidget extends StatelessWidget {
  const _SummaryWidget({required this.summary});

  final String summary;

  @override
  Widget build(BuildContext context) {
    return TextWidget(
      summary,
      maxLines: 2,
    );
  }
}

class _ActionsWidget extends StatelessWidget with ThemeMixin {
  const _ActionsWidget({
    required this.onUpperPressed,
    required this.onDownPressed,
    required this.onCommentPressed,
  });

  final void Function()? onUpperPressed;
  final void Function()? onDownPressed;
  final void Function()? onCommentPressed;

  @override
  Widget build(BuildContext context) {
    final metrics = getMetrics();

    return Wrap(
      spacing: metrics.medium,
      runSpacing: metrics.medium,
      children: [
        IconButtonWidget(
          icon: Ionicons.arrow_up_outline,
          onPressed: onUpperPressed,
        ),
        IconButtonWidget(
          icon: Ionicons.arrow_down_outline,
          onPressed: onDownPressed,
        ),
        IconButtonWidget(
          icon: Ionicons.chatbubble_outline,
          onPressed: onCommentPressed,
        ),
      ],
    );
  }
}
