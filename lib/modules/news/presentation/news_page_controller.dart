import 'package:get/get.dart';
import 'package:tabnews/core/domain/entities/news_entity.dart';
import 'package:tabnews/modules/news/news_usecases.dart';

class NewsPageController extends GetxController {
  final _newsUsecases = Get.find<NewsUsecases>();

  late String _user;
  late String _slug;
  final Rx<NewsEntity?> _news = Rx(null);
  final Rx<List<NewsEntity>> _comments = Rx([]);
  final Rx<bool> _isLoading = Rx(false);

  NewsEntity? get news => _news.value;
  List<NewsEntity> get comments => _comments.value;
  bool get isLoading => _isLoading.value;

  @override
  void onInit() {
    super.onInit();

    _user = Get.parameters['user']!;
    _slug = Get.parameters['slug']!;
  }

  @override
  Future<void> onReady() async {
    super.onReady();

    try {
      _isLoading.value = true;

      final data = await Future.wait([
        _newsUsecases.getOne(user: _user, slug: _slug),
        _newsUsecases.getComments(user: _user, slug: _slug),
      ]);

      _news.value = data[0] as NewsEntity?;
      _comments.value = data[1] as List<NewsEntity>? ?? [];
    } finally {
      _isLoading.value = false;
    }
  }
}
