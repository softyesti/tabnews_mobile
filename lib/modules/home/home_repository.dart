import 'package:tabnews/core/domain/entities/news_entity.dart';
import 'package:tabnews/modules/home/home_datasource.dart';

abstract class HomeRepository {
  Future<List<NewsEntity>> getAll();
}

class HomeRepositoryImpl implements HomeRepository {
  const HomeRepositoryImpl({required this.datasource});

  final HomeDatasource datasource;

  @override
  Future<List<NewsEntity>> getAll() async {
    final news = await datasource.getAll();
    return news
        .map((e) => NewsEntityMapper.fromMap(e as Map<String, dynamic>))
        .toList();
  }
}
