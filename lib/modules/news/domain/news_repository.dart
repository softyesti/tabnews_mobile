import 'package:tabnews/core/domain/entities/news_entity.dart';

abstract class NewsRepository {
  Future<NewsEntity?> getOne({
    required String user,
    required String slug,
  });
  Future<List<NewsEntity>> getComments({
    required String user,
    required String slug,
  });
}
