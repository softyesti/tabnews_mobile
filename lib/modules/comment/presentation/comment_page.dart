import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabnews/core/mixin/theme_mixin.dart';
import 'package:tabnews/core/routes/app_routes.dart';
import 'package:tabnews/core/widgets/appbar_widget.dart';
import 'package:tabnews/core/widgets/cards/detailed_news_card_widget.dart';
import 'package:tabnews/core/widgets/page_widget.dart';
import 'package:tabnews/core/widgets/spacer_widget.dart';
import 'package:tabnews/core/widgets/text_widget.dart';
import 'package:tabnews/modules/comment/presentation/controllers/comment_page_controller.dart';

class CommentPage extends StatefulWidget {
  const CommentPage({super.key});

  @override
  State<StatefulWidget> createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> with ThemeMixin {
  final scrollController = ScrollController();
  final detailKey = GlobalKey();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final box = detailKey.currentContext!.findRenderObject()! as RenderBox;
      final height = box.size.height;

      scrollController.jumpTo(height);
    });
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CommentPageController>();

    return PageWidget.sliver(
      scrollController: scrollController,
      appBar: AppBarWidget(
        showLeading: true,
        scrollController: scrollController,
      ),
      slivers: [
        SliverToBoxAdapter(
          child: DetailedNewsCardWidget(key: detailKey, news: controller.news),
        ),
        const SliverToBoxAdapter(
          child: SpacerWidget(size: SpacerWidgetSizes.large),
        ),
        SliverToBoxAdapter(
          child: DetailedNewsCardWidget(news: controller.comment),
        ),
        const SliverToBoxAdapter(
          child: SpacerWidget(size: SpacerWidgetSizes.large),
        ),
        const SliverToBoxAdapter(
          child: TextWidget('Respostas', size: TextWidgetSizes.titleMedium),
        ),
        const SliverToBoxAdapter(child: SpacerWidget()),
        SliverList.separated(
          itemCount: controller.comment.children.length,
          separatorBuilder: (_, __) => const SpacerWidget(),
          itemBuilder: (_, index) {
            final comment = controller.comment.children[index];

            void onPressed() {
              Get.toNamed<void>(
                AppRoutes.comment,
                preventDuplicates: false,
              );
            }

            return DetailedNewsCardWidget(
              news: comment,
              onCommentPressed: onPressed,
            );
          },
        ),
      ],
    );
  }
}
