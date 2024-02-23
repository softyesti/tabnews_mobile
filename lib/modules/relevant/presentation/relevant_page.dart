import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabnews/core/routes/app_routes.dart';
import 'package:tabnews/core/widgets/appbar_widget.dart';
import 'package:tabnews/core/widgets/cards/compact_news_card_widget.dart';
import 'package:tabnews/core/widgets/page_widget.dart';
import 'package:tabnews/core/widgets/spacer_widget.dart';
import 'package:tabnews/modules/relevant/presentation/relevant_page_controller.dart';

class RelevantPage extends GetView<RelevantPageController> {
  const RelevantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.news.value.isNotEmpty) return const _ChildWidget();
      return const PageWidget(
        body: Center(child: CircularProgressIndicator.adaptive()),
      );
    });
  }
}

class _ChildWidget extends GetView<RelevantPageController> {
  const _ChildWidget();

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();

    return PageWidget(
      appBar: AppBarWidget(
        title: 'Relevantes',
        scrollController: scrollController,
      ),
      body: Obx(
        () => ListView.separated(
          controller: scrollController,
          itemCount: controller.news.value.length,
          separatorBuilder: (_, __) => const SpacerWidget(),
          itemBuilder: (_, index) {
            final news = controller.news.value[index];
            return CompactNewsCardWidget(
              news: news,
              onPressed: () => Get.toNamed<void>(
                AppRoutes.news,
                parameters: {'user': news.ownerUsername, 'slug': news.slug},
              ),
            );
          },
        ),
      ),
    );
  }
}
