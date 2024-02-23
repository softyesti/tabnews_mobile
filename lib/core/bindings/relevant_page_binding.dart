import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:tabnews/modules/relevant/domain/get_all_relevant_news_usecase.dart';
import 'package:tabnews/modules/relevant/external/relevant_datasource_impl.dart';
import 'package:tabnews/modules/relevant/infra/relevant_repository_impl.dart';
import 'package:tabnews/modules/relevant/presentation/relevant_page_controller.dart';

class RelevantPageBinding implements Bindings {
  @override
  void dependencies() {
    Get
      ..lazyPut<GetAllRelevantNewsUsecase>(
        () => GetAllRelevantNewsUsecaseImpl(
          repository: RelevantRepositoryImpl(
            datasource: RelevantDatasourceImpl(dio: Get.find<Dio>()),
          ),
        ),
      )
      ..lazyPut(RelevantPageController.new);
  }
}
