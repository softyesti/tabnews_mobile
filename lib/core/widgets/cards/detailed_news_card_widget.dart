import 'package:flutter/material.dart';
import 'package:tabnews/core/domain/entities/detailed_news_entity.dart';
import 'package:tabnews/core/widgets/card_widget.dart';
import 'package:tabnews/core/widgets/markdown/markdown_viewer_widget.dart';
import 'package:tabnews/core/widgets/spacer_widget.dart';
import 'package:tabnews/core/widgets/text_widget.dart';

class DetailedNewsCardWidget extends StatelessWidget {
  const DetailedNewsCardWidget({
    required this.news,
    super.key,
  });

  final DetailedNewsEntity news;

  @override
  Widget build(BuildContext context) {
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
        const SpacerWidget(size: SpacerWidgetSizes.small),
        CardWidget(child: MarkdownViewerWidget(data: news.body)),
      ],
    );
  }
}
