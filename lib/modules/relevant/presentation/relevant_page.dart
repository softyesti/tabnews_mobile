import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabnews/core/routes/app_routes.dart';
import 'package:tabnews/core/widgets/appbar_widget.dart';
import 'package:tabnews/core/widgets/cards/news_card_widget.dart';
import 'package:tabnews/core/widgets/page_widget.dart';
import 'package:tabnews/core/widgets/spacer_widget.dart';

class RelevantPage extends StatelessWidget {
  const RelevantPage({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();

    return PageWidget(
      appBar: AppBarWidget(
        title: 'Relevantes',
        scrollController: scrollController,
      ),
      body: ListView.separated(
        controller: scrollController,
        itemCount: 10,
        separatorBuilder: (_, __) => const SpacerWidget(),
        itemBuilder: (_, __) => NewsCardWidget(
          title: 'Título de teste',
          summary: 'Sumário do artigo',
          onPressed: () => Get.toNamed<void>(AppRoutes.news),
        ),
      ),
    );
  }
}
