import 'package:dio/dio.dart';
import 'package:tabnews/core/domain/entities/detailed_news_entity.dart';
import 'package:tabnews/core/domain/entities/news_comment_entity.dart';
import 'package:tabnews/modules/news/infra/news_datasource.dart';

class NewsDatasourceImpl implements NewsDatasource {
  const NewsDatasourceImpl({required this.dio});

  final Dio dio;

  @override
  Future<DetailedNewsEntity?> getOne({
    required String user,
    required String slug,
  }) async {
    final response = await dio.get<dynamic>('/contents/$user/$slug');

    final data = response.data as Map<String, dynamic>?;
    if (data != null) return DetailedNewsEntityMapper.fromMap(data);

    return null;
  }

  @override
  Future<List<NewsCommentEntity>> getComments({
    required String user,
    required String slug,
  }) async {
    final response = await dio.get<dynamic>('/contents/$user/$slug/children');

    final data = response.data as List<dynamic>?;
    if (data != null) {
      return data
          .map(
            (e) => NewsCommentEntityMapper.fromMap(e as Map<String, dynamic>),
          )
          .toList();
    }

    return [];
  }
}
