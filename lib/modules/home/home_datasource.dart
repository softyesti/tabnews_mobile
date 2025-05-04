import 'package:dio/dio.dart';

abstract class HomeDatasource {
  Future<List<dynamic>> getAll({required String strategy});
}

class HomeDatasourceImpl implements HomeDatasource {
  const HomeDatasourceImpl({required this.dio});

  final Dio dio;

  @override
  Future<List<dynamic>> getAll({required String strategy}) async {
    final response = await dio.get<List<dynamic>>(
      '/contents',
      queryParameters: {
        'page': 1,
        'per_page': 30,
        'strategy': strategy,
      },
    );

    if (response.data != null) return response.data!;
    return [];
  }
}
