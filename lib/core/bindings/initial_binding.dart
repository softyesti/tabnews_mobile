import 'package:dio/dio.dart';
import 'package:get/get.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => Dio(BaseOptions(baseUrl: 'https://www.tabnews.com.br/api/v1')),
    );
  }
}
