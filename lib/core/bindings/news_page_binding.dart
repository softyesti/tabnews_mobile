import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:tabnews/modules/news/domain/news_repository.dart';
import 'package:tabnews/modules/news/domain/usecases/get_news_comments_usecase.dart';
import 'package:tabnews/modules/news/domain/usecases/get_one_news_usecase.dart';
import 'package:tabnews/modules/news/external/news_datasource_impl.dart';
import 'package:tabnews/modules/news/infra/news_repository_impl.dart';
import 'package:tabnews/modules/news/presentation/news_page_controller.dart';

class NewsPageBinding implements Bindings {
  @override
  void dependencies() {
    Get
      ..lazyPut<NewsRepository>(
        () => NewsRepositoryImpl(
          datasource: NewsDatasourceImpl(dio: Get.find<Dio>()),
        ),
      )
      ..lazyPut<GetOneNewsUsecase>(
        () => GetOneNewsUsecaseImpl(repository: Get.find<NewsRepository>()),
      )
      ..lazyPut<GetNewsCommentsUsecase>(
        () => GetNewsCommentsUsecaseImpl(
          repository: Get.find<NewsRepository>(),
        ),
      )
      ..lazyPut(NewsPageController.new);
  }
}
