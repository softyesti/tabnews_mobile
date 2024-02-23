import 'package:tabnews/core/domain/entities/compact_news_entity.dart';

abstract class NewsRepository {
  Future<List<CompactNewsEntity>> getAll();
}
