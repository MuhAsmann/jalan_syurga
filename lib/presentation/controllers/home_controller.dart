import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jalan_syurga/data/models/user_model.dart';
import 'package:jalan_syurga/data/repositories/home_repository.dart';

class HomeController extends GetxController {
  final HomeRepository _homeRepository;

  RxList<UserModel> listUsers = <UserModel>[].obs;

  HomeController(this._homeRepository);

  @override
  void onInit() {
    getUsers();
    super.onInit();
  }

  Future<void> getUsers() async {
    final users = await _homeRepository.getUsers();
    users.fold((error) {
      debugPrint("ERR : $error");
    }, (users) {
      listUsers.value = users;
    });
  }
}
