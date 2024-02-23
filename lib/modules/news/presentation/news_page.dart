import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:tabnews/core/mixin/theme_mixin.dart';
import 'package:tabnews/core/routes/app_routes.dart';
import 'package:tabnews/core/widgets/appbar_widget.dart';
import 'package:tabnews/core/widgets/button/fab_button_widget.dart';
import 'package:tabnews/core/widgets/cards/detailed_news_card_widget.dart';
import 'package:tabnews/core/widgets/cards/news_comment_card_widget.dart';
import 'package:tabnews/core/widgets/page_widget.dart';
import 'package:tabnews/core/widgets/spacer_widget.dart';
import 'package:tabnews/core/widgets/text_widget.dart';
import 'package:tabnews/modules/news/presentation/news_page_controller.dart';

class NewsPage extends GetView<NewsPageController> {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.news.value != null) return const _ChildWidget();
      return const PageWidget(
        body: Center(child: CircularProgressIndicator.adaptive()),
      );
    });
  }
}

class _ChildWidget extends StatelessWidget {
  const _ChildWidget();

  @override
  Widget build(Object context) {
    final scrollController = ScrollController();

    return PageWidget.sliver(
      scrollController: scrollController,
      appBar: _AppBarWidget(scrollController: scrollController),
      floatingActionButton: _FabButtonWidget(
        scrollController: scrollController,
      ),
      slivers: const [
        _NewsWidget(),
        SliverToBoxAdapter(child: SpacerWidget(size: SpacerWidgetSizes.large)),
        SliverToBoxAdapter(
          child: TextWidget('Respostas', size: TextWidgetSizes.titleMedium),
        ),
        SliverToBoxAdapter(child: SpacerWidget()),
        _CommentsWidget(),
      ],
    );
  }
}

class _AppBarWidget extends GetView<NewsPageController> {
  const _AppBarWidget({required this.scrollController});

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AppBarWidget(
        title: controller.news.value!.title,
        showLeading: true,
        scrollController: scrollController,
      ),
    );
  }
}

class _FabButtonWidget extends StatelessWidget with ThemeMixin {
  const _FabButtonWidget({required this.scrollController});

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    final metrics = getMetrics();

    return FabButtonWidget(
      icon: Ionicons.arrow_up_outline,
      onPressed: () => scrollController.animateTo(
        0,
        duration: metrics.duration,
        curve: metrics.curve,
      ),
    );
  }
}

class _NewsWidget extends GetView<NewsPageController> {
  const _NewsWidget();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SliverToBoxAdapter(
        child: DetailedNewsCardWidget(
          news: controller.news.value!,
        ),
      ),
    );
  }
}

class _CommentsWidget extends GetView<NewsPageController> {
  const _CommentsWidget();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final news = controller.news.value!;
      final comments = controller.comments.value;

      return SliverList.separated(
        itemCount: comments.length,
        separatorBuilder: (_, __) => const SpacerWidget(),
        itemBuilder: (_, index) {
          final comment = comments[index];

          void onPressed() {
            Get.toNamed<void>(
              AppRoutes.comment,
              parameters: {'news': news.toJson(), 'comment': comment.toJson()},
            );
          }

          return NewsCommentCardWidget(
            comment: comment,
            onPressed: onPressed,
            onCommentPressed: onPressed,
          );
        },
      );
    });
  }
}
