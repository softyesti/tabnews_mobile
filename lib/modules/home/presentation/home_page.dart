import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solar_icons/solar_icons.dart';
import 'package:tabnews/core/mixin/dialog_mixin.dart';
import 'package:tabnews/core/routes/app_routes.dart';
import 'package:tabnews/core/widgets/appbar_widget.dart';
import 'package:tabnews/core/widgets/button/icon_button_widget.dart';
import 'package:tabnews/core/widgets/cards/compact_news_card_widget.dart';
import 'package:tabnews/core/widgets/page_widget.dart';
import 'package:tabnews/core/widgets/spacer_widget.dart';
import 'package:tabnews/modules/home/presentation/dialogs/filter_bottomsheet_widget.dart';
import 'package:tabnews/modules/home/presentation/home_page_controller.dart';

class HomePage extends GetView<HomePageController> with DialogMixin {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();

    return Obx(() {
      final news = controller.news;

      return PageWidget(
        isLoading: controller.isLoading,
        appBar: AppBarWidget(
          title: 'TabNews',
          scrollController: scrollController,
          actions: [
            IconButtonWidget(
              icon: SolarIconsOutline.filter,
              onPressed: () async => openBottomSheet(
                name: 'news_filter',
                child: FilterBottomSheetWidget(
                  selected: controller.filter,
                  onSelected: (value) async => controller.setFilter(value),
                ),
              ),
            ),
          ],
        ),
        body: ListView.separated(
          controller: scrollController,
          itemCount: news.length,
          separatorBuilder: (_, __) => const SpacerWidget(),
          itemBuilder: (_, index) {
            final item = news[index];
            return CompactNewsCardWidget(
              news: item,
              index: index + 1,
              onPressed: () => Get.toNamed<void>(
                AppRoutes.news,
                parameters: {'user': item.ownerUsername, 'slug': item.slug},
              ),
            );
          },
        ),
      );
    });
  }
}
