import 'package:flutter/material.dart';
import 'package:tabnews/core/domain/entities/news_entity.dart';
import 'package:tabnews/core/mixin/datetime_mixin.dart';
import 'package:tabnews/core/mixin/theme_mixin.dart';
import 'package:tabnews/core/widgets/text_widget.dart';

class HeaderWidget extends StatelessWidget with ThemeMixin, DateTimeMixin {
  const HeaderWidget({required this.news, super.key});

  final NewsEntity news;

  @override
  Widget build(BuildContext context) {
    final colors = getColors();
    final fgColor = colors.textAlt;

    return Row(
      children: [
        TextWidget(news.ownerUsername, color: colors.primary),
        TextWidget(' • ', color: fgColor),
        TextWidget(getRelativeTime(news.publishedAt), color: fgColor),
      ],
    );
  }
}
