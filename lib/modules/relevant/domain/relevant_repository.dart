import 'package:tabnews/core/domain/entities/news_entity.dart';

abstract class NewsRepository {
  Future<List<NewsEntity>> getAll();
}
