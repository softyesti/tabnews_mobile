import 'package:get/get.dart';
import 'package:tabnews/core/domain/entities/compact_news_entity.dart';
import 'package:tabnews/modules/relevant/domain/get_all_relevant_news_usecase.dart';

class RelevantPageController extends GetxController {
  // usecases
  final _getAllRelevantUsecase = Get.find<GetAllRelevantNewsUsecase>();

  // vars
  final Rx<List<CompactNewsEntity>> news = Rx([]);

  @override
  Future<void> onReady() async {
    super.onReady();

    final data = await _getAllRelevantUsecase();
    news.value = data;
  }
}
