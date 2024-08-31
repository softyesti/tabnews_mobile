import 'package:tabnews/core/domain/entities/news_entity.dart';
import 'package:tabnews/modules/news/domain/news_repository.dart';

abstract class GetOneNewsUsecase {
  Future<NewsEntity?> call({
    required String user,
    required String slug,
  });
}

class GetOneNewsUsecaseImpl implements GetOneNewsUsecase {
  const GetOneNewsUsecaseImpl({required this.repository});

  final NewsRepository repository;

  @override
  Future<NewsEntity?> call({
    required String user,
    required String slug,
  }) async {
    final news = await repository.getOne(user: user, slug: slug);
    return news;
  }
}
