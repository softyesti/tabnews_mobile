import 'package:get/get.dart';
import 'package:tabnews/core/domain/entities/news_entity.dart';
import 'package:tabnews/core/domain/enums/news_filter_enum.dart';
import 'package:tabnews/modules/home/home_usecases.dart';

class HomePageController extends GetxController {
  final _feedUsecases = Get.find<HomeUsecases>();

  final Rx<bool> _isLoading = Rx(false);
  final Rx<List<NewsEntity>> _news = Rx([]);
  final Rx<NewsFilterEnum> _filter = Rx(NewsFilterEnum.relevant);

  List<NewsEntity> get news => _news.value;
  NewsFilterEnum get filter => _filter.value;
  bool get isLoading => _isLoading.value;

  @override
  Future<void> onReady() async {
    super.onReady();
    await _load();
  }

  Future<void> setFilter(NewsFilterEnum value) async {
    _filter.value = value;
    await _load();
  }

  Future<void> _load() async {
    try {
      _isLoading.value = true;

      final data = await _feedUsecases.getAll(filter: _filter.value);
      _news.value = data;
    } finally {
      _isLoading.value = false;
    }
  }
}
