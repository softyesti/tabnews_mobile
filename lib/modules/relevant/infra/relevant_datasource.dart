import 'package:tabnews/core/domain/entities/compact_news_entity.dart';

abstract class RelevantDatasource {
  Future<List<CompactNewsEntity>> getAll();
}
