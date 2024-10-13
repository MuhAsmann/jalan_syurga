import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:jalan_syurga/data/data_sources/remote_data_sources/home_remote_data_source.dart';
import 'package:jalan_syurga/data/repositories/home_repository.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() {
      final dio = Dio();
      dio.options.baseUrl = "https://jsonplaceholder.typicode.com";

      return dio;
    });

    Get.lazyPut(() => HomeRepository(Get.find()));

    Get.lazyPut(() => HomeRemoteDataSource(Get.find()));
  }
}
