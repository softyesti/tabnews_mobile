import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:tabnews/core/mixin/theme_mixin.dart';
import 'package:tabnews/core/routes/app_routes.dart';
import 'package:tabnews/core/widgets/appbar_widget.dart';
import 'package:tabnews/core/widgets/blur_widget.dart';
import 'package:tabnews/core/widgets/button/fab_button_widget.dart';
import 'package:tabnews/core/widgets/button/icon_button_widget.dart';
import 'package:tabnews/core/widgets/card_widget.dart';
import 'package:tabnews/core/widgets/cards/detailed_news_card_widget.dart';
import 'package:tabnews/core/widgets/cards/news_comment_card_widget.dart';
import 'package:tabnews/core/widgets/page_widget.dart';
import 'package:tabnews/core/widgets/spacer_widget.dart';
import 'package:tabnews/core/widgets/text_field_widget.dart';
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
    final repliesKey = GlobalKey();
    final scrollController = ScrollController();

    return PageWidget.sliver(
      scrollController: scrollController,
      appBar: _AppBarWidget(scrollController: scrollController),
      floatingActionButton: _FabButtonsWidget(
        repliesKey: repliesKey,
        scrollController: scrollController,
      ),
      bottomNavigationBar: _BottomWidget(),
      slivers: [
        const _NewsWidget(),
        const SliverToBoxAdapter(
          child: SpacerWidget(size: SpacerWidgetSizes.large),
        ),
        SliverToBoxAdapter(
          child: TextWidget(
            'Respostas',
            size: TextWidgetSizes.titleMedium,
            key: repliesKey,
          ),
        ),
        const SliverToBoxAdapter(child: SpacerWidget()),
        const _CommentsWidget(),
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
        showLeading: true,
        title: controller.news.value!.title,
        scrollController: scrollController,
      ),
    );
  }
}

class _FabButtonsWidget extends StatelessWidget with ThemeMixin {
  const _FabButtonsWidget({
    required this.repliesKey,
    required this.scrollController,
  });

  final GlobalKey repliesKey;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    final metrics = getMetrics();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FabButtonWidget(
          icon: Ionicons.arrow_up_outline,
          onPressed: () => scrollController.animateTo(
            0,
            duration: metrics.duration,
            curve: metrics.curve,
          ),
        ),
        const SpacerWidget(size: SpacerWidgetSizes.small),
        FabButtonWidget(
          icon: Ionicons.arrow_down_outline,
          onPressed: () => Scrollable.ensureVisible(
            repliesKey.currentContext!,
            duration: metrics.duration,
            curve: metrics.curve,
          ),
        ),
      ],
    );
  }
}

class _BottomWidget extends StatelessWidget with ThemeMixin {
  @override
  Widget build(BuildContext context) {
    final metrics = getMetrics();
    final insets = MediaQuery.of(context).viewInsets;

    final borderRadius = BorderRadius.all(metrics.radius).copyWith(
      bottomLeft: Radius.zero,
      bottomRight: Radius.zero,
    );

    return BlurWidget(
      borderRadius: borderRadius,
      child: CardWidget(
        borderRadius: borderRadius,
        padding: EdgeInsets.all(metrics.medium).copyWith(
          bottom: insets.bottom <= 24 ? 0 : metrics.medium,
        ),
        child: SafeArea(
          top: false,
          bottom: insets.bottom <= 24,
          left: false,
          right: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Flexible(
                child: TextFieldWidget(
                  hintText: 'Escreva um comentário',
                ),
              ),
              Visibility(
                visible: insets.bottom != 0,
                child: const SpacerWidget(),
              ),
              Visibility(
                visible: insets.bottom != 0,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButtonWidget(icon: Icons.title_outlined),
                    IconButtonWidget(icon: Icons.format_bold_outlined),
                    IconButtonWidget(icon: Icons.format_italic_outlined),
                    IconButtonWidget(icon: Icons.link_outlined),
                    IconButtonWidget(icon: Icons.format_list_bulleted_outlined),
                    IconButtonWidget(icon: Icons.format_list_numbered_outlined),
                    IconButtonWidget(icon: Icons.format_quote_outlined),
                    IconButtonWidget(icon: Icons.strikethrough_s_outlined),
                    IconButtonWidget(icon: Icons.code_outlined),
                    IconButtonWidget(icon: Icons.check_box_outlined),
                    IconButtonWidget(icon: Icons.grid_on_outlined),
                    IconButtonWidget(icon: Icons.image_outlined),
                  ],
                ),
              ),
            ],
          ),
        ),
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
              parameters: {
                'news': news.toJson(),
                'comment': comment.toJson(),
              },
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
