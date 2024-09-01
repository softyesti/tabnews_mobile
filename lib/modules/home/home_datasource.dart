import 'package:dio/dio.dart';

abstract class HomeDatasource {
  Future<List<dynamic>> getAll();
}

class HomeDatasourceImpl implements HomeDatasource {
  const HomeDatasourceImpl({required this.dio});

  final Dio dio;

  @override
  Future<List<dynamic>> getAll() async {
    final response = await dio.get<List<dynamic>>(
      '/contents',
      queryParameters: {
        'page': 1,
        'per_page': 10,
        'strategy': 'relevant',
      },
    );

    if (response.data != null) return response.data!;
    return [];
  }
}
