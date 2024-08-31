import 'package:tabnews/core/domain/entities/news_entity.dart';

abstract class RelevantDatasource {
  Future<List<NewsEntity>> getAll();
}
