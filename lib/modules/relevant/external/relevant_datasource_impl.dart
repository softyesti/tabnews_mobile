import 'package:dio/dio.dart';
import 'package:tabnews/core/domain/entities/news_entity.dart';
import 'package:tabnews/modules/relevant/infra/relevant_datasource.dart';

class RelevantDatasourceImpl implements RelevantDatasource {
  const RelevantDatasourceImpl({required this.dio});

  final Dio dio;

  @override
  Future<List<NewsEntity>> getAll() async {
    final response = await dio.get<dynamic>(
      '/contents',
      queryParameters: {
        'page': 1,
        'per_page': 10,
        'strategy': 'relevant',
      },
    );

    final data = response.data as List<dynamic>?;
    if (data != null) {
      return data
          .map(
            (e) => NewsEntityMapper.fromMap(e as Map<String, dynamic>),
          )
          .toList();
    }

    return [];
  }
}
