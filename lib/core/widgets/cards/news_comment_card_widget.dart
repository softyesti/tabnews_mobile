import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:tabnews/core/domain/entities/news_comment_entity.dart';
import 'package:tabnews/core/widgets/button/icon_button_widget.dart';
import 'package:tabnews/core/widgets/card_widget.dart';
import 'package:tabnews/core/widgets/markdown_widget.dart';
import 'package:tabnews/core/widgets/spacer_widget.dart';
import 'package:tabnews/core/widgets/text_widget.dart';
import 'package:tabnews/core/widgets/touchable_widget.dart';
import 'package:tabnews/core/widgets/wrap_widget.dart';

class NewsCommentCardWidget extends StatelessWidget {
  const NewsCommentCardWidget({
    required this.comment,
    this.onPressed,
    this.onCommentPressed,
    this.onUpperPressed,
    this.onDownPressed,
    super.key,
  });

  final NewsCommentEntity comment;
  final void Function()? onPressed;
  final void Function()? onCommentPressed;
  final void Function()? onUpperPressed;
  final void Function()? onDownPressed;

  @override
  Widget build(BuildContext context) {
    return TouchableWidget(
      onPressed: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _HeaderWidget(comment: comment),
          const SpacerWidget(size: SpacerWidgetSizes.small),
          CardWidget(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MarkdownWidget(data: comment.body),
                const SpacerWidget(),
                _ActionsWidget(
                  comment: comment,
                  onUpperPressed: onUpperPressed,
                  onDownPressed: onDownPressed,
                  onCommentPressed: onCommentPressed,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({required this.comment});

  final NewsCommentEntity comment;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextWidget(comment.ownerUsername, size: TextWidgetSizes.titleMedium),
        const TextWidget(' • ', size: TextWidgetSizes.titleMedium),
        TextWidget(comment.publishedAt, size: TextWidgetSizes.titleMedium),
      ],
    );
  }
}

class _ActionsWidget extends StatelessWidget {
  const _ActionsWidget({
    required this.comment,
    required this.onUpperPressed,
    required this.onDownPressed,
    required this.onCommentPressed,
  });

  final NewsCommentEntity comment;
  final void Function()? onUpperPressed;
  final void Function()? onDownPressed;
  final void Function()? onCommentPressed;

  @override
  Widget build(BuildContext context) {
    return WrapWidget(
      direction: Axis.horizontal,
      children: [
        IconButtonWidget(
          icon: Ionicons.arrow_up_outline,
          label: comment.tabcoinsCredit.toString(),
          onPressed: onUpperPressed,
        ),
        IconButtonWidget(
          icon: Ionicons.arrow_down_outline,
          label: comment.tabcoinsDebit.toString(),
          onPressed: onDownPressed,
        ),
        IconButtonWidget(
          icon: Ionicons.chatbubble_outline,
          label: comment.commentCount.toString(),
          onPressed: onCommentPressed,
        ),
      ],
    );
  }
}
