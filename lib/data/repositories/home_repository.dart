import 'package:dartz/dartz.dart';
import 'package:jalan_syurga/data/data_sources/remote_data_sources/home_remote_data_source.dart';
import 'package:jalan_syurga/data/models/user_model.dart';

class HomeRepository {
  final HomeRemoteDataSource _dataSource;

  const HomeRepository(this._dataSource);

  Future<Either<Exception, List<UserModel>>> getUsers() async {
    try {
      final users = await _dataSource.getUsers();
      return Right(users);
    } catch (e) {
      return Left(Exception(e));
    }
  }
}
