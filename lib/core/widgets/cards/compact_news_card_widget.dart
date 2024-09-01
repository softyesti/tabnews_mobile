import 'package:flutter/material.dart';
import 'package:tabnews/core/domain/entities/news_entity.dart';
import 'package:tabnews/core/mixin/datetime_mixin.dart';
import 'package:tabnews/core/mixin/theme_mixin.dart';
import 'package:tabnews/core/widgets/card_widget.dart';
import 'package:tabnews/core/widgets/cards/widgets/actions_widget.dart';
import 'package:tabnews/core/widgets/cards/widgets/header_widget.dart';
import 'package:tabnews/core/widgets/spacer_widget.dart';
import 'package:tabnews/core/widgets/text_widget.dart';
import 'package:tabnews/core/widgets/touchable_widget.dart';

class CompactNewsCardWidget extends StatelessWidget
    with ThemeMixin, DateTimeMixin {
  const CompactNewsCardWidget({
    required this.news,
    required this.index,
    this.onPressed,
    super.key,
  });

  final int index;
  final NewsEntity news;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final colors = getColors();

    return TouchableWidget(
      onPressed: onPressed,
      child: CardWidget(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget('$index.', size: TextWidgetSizes.titleMedium),
            const SpacerWidget(
              direction: Axis.horizontal,
              size: SpacerWidgetSizes.small,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  HeaderWidget(news: news),
                  TextWidget(news.title!, size: TextWidgetSizes.titleMedium),
                  const SpacerWidget(size: SpacerWidgetSizes.small),
                  ActionsWidget(news: news, color: colors.textAlt),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
