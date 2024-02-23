import 'package:tabnews/core/domain/entities/compact_news_entity.dart';
import 'package:tabnews/modules/relevant/domain/relevant_repository.dart';
import 'package:tabnews/modules/relevant/infra/relevant_datasource.dart';

class RelevantRepositoryImpl implements NewsRepository {
  const RelevantRepositoryImpl({required this.datasource});

  final RelevantDatasource datasource;

  @override
  Future<List<CompactNewsEntity>> getAll() async {
    final news = await datasource.getAll();
    return news;
  }
}
