import 'package:get/get.dart';
import 'package:tabnews/core/domain/entities/news_entity.dart';
import 'package:tabnews/modules/news/news_usecases.dart';

class NewsPageController extends GetxController {
  final _newsUsecases = Get.find<NewsUsecases>();

  late String user;
  late String slug;
  final Rx<NewsEntity?> news = Rx(null);
  final Rx<List<NewsEntity>> comments = Rx([]);

  @override
  void onInit() {
    super.onInit();

    user = Get.parameters['user']!;
    slug = Get.parameters['slug']!;
  }

  @override
  Future<void> onReady() async {
    super.onReady();

    final data = await Future.wait([
      _newsUsecases.getOne(user: user, slug: slug),
      _newsUsecases.getComments(user: user, slug: slug),
    ]);

    news.value = data[0] as NewsEntity?;
    comments.value = data[1] as List<NewsEntity>? ?? [];
  }
}
