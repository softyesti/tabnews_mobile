import 'package:tabnews/core/domain/entities/news_entity.dart';
import 'package:tabnews/modules/home/home_repository.dart';

abstract class HomeUsecases {
  Future<List<NewsEntity>> getAll();
}

class HomeUsecasesImpl implements HomeUsecases {
  const HomeUsecasesImpl({required this.repository});

  final HomeRepository repository;

  @override
  Future<List<NewsEntity>> getAll() async {
    final news = await repository.getAll();
    return news;
  }
}
