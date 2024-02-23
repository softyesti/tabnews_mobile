import 'package:tabnews/core/domain/entities/compact_news_entity.dart';
import 'package:tabnews/modules/relevant/domain/relevant_repository.dart';

abstract class GetAllRelevantNewsUsecase {
  Future<List<CompactNewsEntity>> call();
}

class GetAllRelevantNewsUsecaseImpl implements GetAllRelevantNewsUsecase {
  const GetAllRelevantNewsUsecaseImpl({required this.repository});

  final NewsRepository repository;

  @override
  Future<List<CompactNewsEntity>> call() async {
    final news = await repository.getAll();
    return news;
  }
}
