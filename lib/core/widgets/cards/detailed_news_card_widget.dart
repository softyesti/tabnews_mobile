import 'package:flutter/material.dart';
import 'package:tabnews/core/domain/entities/detailed_news_entity.dart';
import 'package:tabnews/core/mixin/theme_mixin.dart';
import 'package:tabnews/core/widgets/card_widget.dart';
import 'package:tabnews/core/widgets/markdown_widget.dart';
import 'package:tabnews/core/widgets/spacer_widget.dart';
import 'package:tabnews/core/widgets/text_widget.dart';

class DetailedNewsCardWidget extends StatelessWidget with ThemeMixin {
  const DetailedNewsCardWidget({
    required this.news,
    super.key,
  });

  final DetailedNewsEntity news;

  @override
  Widget build(BuildContext context) {
    final colors = getColors();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            TextWidget(news.ownerUsername, size: TextWidgetSizes.titleMedium),
            const TextWidget(' • ', size: TextWidgetSizes.titleMedium),
            TextWidget(news.publishedAt, size: TextWidgetSizes.titleMedium),
          ],
        ),
        TextWidget(
          '8 min de leitura',
          color: colors.text.withOpacity(0.6),
        ),
        const SpacerWidget(size: SpacerWidgetSizes.small),
        CardWidget(child: MarkdownWidget(data: news.body)),
      ],
    );
  }
}
