import 'package:get/get.dart';
import 'package:tabnews/core/domain/entities/news_entity.dart';
import 'package:tabnews/modules/home/home_usecases.dart';

class HomePageController extends GetxController {
  final _feedUsecases = Get.find<HomeUsecases>();

  final Rx<List<NewsEntity>> _news = Rx([]);
  final Rx<bool> _isLoading = Rx(false);

  List<NewsEntity> get news => _news.value;
  bool get isLoading => _isLoading.value;

  @override
  Future<void> onReady() async {
    super.onReady();

    try {
      _isLoading.value = true;

      final data = await _feedUsecases.getAll();
      _news.value = data;
    } finally {
      _isLoading.value = false;
    }
  }
}
