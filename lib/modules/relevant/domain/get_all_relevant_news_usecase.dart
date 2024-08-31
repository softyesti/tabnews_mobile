import 'package:tabnews/core/domain/entities/news_entity.dart';
import 'package:tabnews/modules/relevant/domain/relevant_repository.dart';

abstract class GetAllRelevantNewsUsecase {
  Future<List<NewsEntity>> call();
}

class GetAllRelevantNewsUsecaseImpl implements GetAllRelevantNewsUsecase {
  const GetAllRelevantNewsUsecaseImpl({required this.repository});

  final NewsRepository repository;

  @override
  Future<List<NewsEntity>> call() async {
    final news = await repository.getAll();
    return news;
  }
}
