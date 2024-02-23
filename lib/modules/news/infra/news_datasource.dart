import 'package:tabnews/core/domain/entities/detailed_news_entity.dart';
import 'package:tabnews/core/domain/entities/news_comment_entity.dart';

abstract class NewsDatasource {
  Future<DetailedNewsEntity?> getOne({
    required String user,
    required String slug,
  });
  Future<List<NewsCommentEntity>> getComments({
    required String user,
    required String slug,
  });
}
