import 'package:get/get.dart';
import 'package:tabnews/core/bindings/comment_page_binding.dart';
import 'package:tabnews/core/bindings/home_page_binding.dart';
import 'package:tabnews/core/bindings/news_page_binding.dart';
import 'package:tabnews/core/bindings/root_page_binding.dart';
import 'package:tabnews/core/routes/app_routes.dart';
import 'package:tabnews/modules/comment/presentation/comment_page.dart';
import 'package:tabnews/modules/news/presentation/news_page.dart';
import 'package:tabnews/modules/root/root_page.dart';

abstract class AppPages {
  static final pages = [
    GetPage<void>(
      title: 'TabNews',
      name: AppRoutes.initial,
      page: RootPage.new,
      bindings: const [
        RootPageBinding(),
        HomePageBinding(),
      ],
    ),
    GetPage<void>(
      title: 'News',
      name: AppRoutes.news,
      page: NewsPage.new,
      binding: NewsPageBinding(),
    ),
    GetPage<void>(
      title: 'Comment',
      name: AppRoutes.comment,
      page: CommentPage.new,
      binding: CommentPageBinding(),
    ),
  ];
}
