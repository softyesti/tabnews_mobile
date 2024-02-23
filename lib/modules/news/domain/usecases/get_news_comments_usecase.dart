import 'package:tabnews/core/domain/entities/news_comment_entity.dart';
import 'package:tabnews/modules/news/domain/news_repository.dart';

abstract class GetNewsCommentsUsecase {
  Future<List<NewsCommentEntity>> call({
    required String user,
    required String slug,
  });
}

class GetNewsCommentsUsecaseImpl implements GetNewsCommentsUsecase {
  const GetNewsCommentsUsecaseImpl({required this.repository});

  final NewsRepository repository;

  @override
  Future<List<NewsCommentEntity>> call({
    required String user,
    required String slug,
  }) async {
    final comments = await repository.getComments(user: user, slug: slug);
    return comments;
  }
}
