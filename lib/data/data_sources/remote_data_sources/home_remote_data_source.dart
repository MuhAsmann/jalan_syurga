import 'package:dio/dio.dart';
import 'package:jalan_syurga/data/models/user_model.dart';

class HomeRemoteDataSource {
  final Dio _dio;
  const HomeRemoteDataSource(this._dio);

  Future<List<UserModel>> getUsers() async {
    try {
      final response = await _dio.get("/users");
      return List.from(response.data.map((u) => UserModel.fromJson(u)));
    } catch (e) {
      throw Exception(e);
    }
  }
}
