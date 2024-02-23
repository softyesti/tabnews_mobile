import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:tabnews/core/domain/entities/compact_news_entity.dart';
import 'package:tabnews/core/mixin/theme_mixin.dart';
import 'package:tabnews/core/widgets/button/icon_button_widget.dart';
import 'package:tabnews/core/widgets/card_widget.dart';
import 'package:tabnews/core/widgets/spacer_widget.dart';
import 'package:tabnews/core/widgets/text_widget.dart';
import 'package:tabnews/core/widgets/touchable_widget.dart';

class CompactNewsCardWidget extends StatelessWidget {
  const CompactNewsCardWidget({
    required this.news,
    this.onPressed,
    this.onCommentPressed,
    this.onUpperPressed,
    this.onDownPressed,
    super.key,
  });

  final CompactNewsEntity news;
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
                Row(
                  children: [
                    TextWidget(news.ownerUsername),
                    const TextWidget(' • '),
                    TextWidget(news.publishedAt),
                  ],
                ),
                TextWidget(news.title, size: TextWidgetSizes.titleLarge),
              ],
            ),
            const SpacerWidget(),
            _ActionsWidget(
              news: news,
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

class _ActionsWidget extends StatelessWidget with ThemeMixin {
  const _ActionsWidget({
    required this.news,
    required this.onUpperPressed,
    required this.onDownPressed,
    required this.onCommentPressed,
  });

  final CompactNewsEntity news;
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
          label: news.tabcoinsCredit.toString(),
          onPressed: onUpperPressed,
        ),
        IconButtonWidget(
          icon: Ionicons.arrow_down_outline,
          label: news.tabcoinsDebit.toString(),
          onPressed: onDownPressed,
        ),
        IconButtonWidget(
          icon: Ionicons.chatbubble_outline,
          label: news.commentCount.toString(),
          onPressed: onCommentPressed,
        ),
      ],
    );
  }
}
