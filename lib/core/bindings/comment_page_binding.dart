import 'package:get/get.dart';
import 'package:tabnews/modules/comment/presentation/comment_page_controller.dart';

class CommentPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(CommentPageController.new);
  }
}
