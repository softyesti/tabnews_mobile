import 'package:get/get.dart';
import 'package:tabnews/core/domain/entities/detailed_news_entity.dart';
import 'package:tabnews/core/domain/entities/news_comment_entity.dart';

class CommentPageController extends GetxController {
  // vars
  late DetailedNewsEntity news;
  late NewsCommentEntity comment;

  @override
  void onInit() {
    super.onInit();

    news = DetailedNewsEntityMapper.fromJson(Get.parameters['news']!);
    comment = NewsCommentEntityMapper.fromJson(Get.parameters['comment']!);
  }
}
