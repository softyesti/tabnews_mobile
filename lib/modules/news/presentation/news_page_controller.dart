import 'package:get/get.dart';
import 'package:tabnews/core/domain/entities/news_entity.dart';
import 'package:tabnews/modules/news/domain/usecases/get_news_comments_usecase.dart';
import 'package:tabnews/modules/news/domain/usecases/get_one_news_usecase.dart';

class NewsPageController extends GetxController {
  // usecases
  final _getOneNewsUsecase = Get.find<GetOneNewsUsecase>();
  final _getNewsChildrenUsecase = Get.find<GetNewsCommentsUsecase>();

  // vars
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
      _getOneNewsUsecase(user: user, slug: slug),
      _getNewsChildrenUsecase(user: user, slug: slug),
    ]);

    news.value = data[0] as NewsEntity?;
    comments.value = data[1] as List<NewsEntity>? ?? [];
  }
}
