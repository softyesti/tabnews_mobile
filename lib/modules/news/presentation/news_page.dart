import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tabnews/core/mixin/theme_mixin.dart';
import 'package:tabnews/core/routes/app_routes.dart';
import 'package:tabnews/core/widgets/appbar_widget.dart';
import 'package:tabnews/core/widgets/cards/comment_card_widget.dart';
import 'package:tabnews/core/widgets/cards/detail_card_widget.dart';
import 'package:tabnews/core/widgets/page_widget.dart';
import 'package:tabnews/core/widgets/spacer_widget.dart';

class NewsPage extends StatelessWidget with ThemeMixin {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();

    return PageWidget.sliver(
      scrollController: scrollController,
      appBar: AppBarWidget(
        title: 'Título da notícia',
        showLeading: true,
        scrollController: scrollController,
      ),
      slivers: [
        const SliverToBoxAdapter(child: DetailCardWidget()),
        const SliverToBoxAdapter(
          child: SpacerWidget(size: SpacerWidgetSizes.large),
        ),
        SliverList.separated(
          itemCount: 10,
          separatorBuilder: (_, __) => const SpacerWidget(),
          itemBuilder: (_, __) => CommentCardWidget(
            onPressed: () => Get.toNamed<void>(AppRoutes.comment),
            onCommentPressed: () => Get.toNamed<void>(AppRoutes.comment),
          ),
        ),
      ],
    );
  }
}
