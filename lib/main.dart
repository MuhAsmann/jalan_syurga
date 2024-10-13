import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jalan_syurga/core/bindings.dart';
import 'package:jalan_syurga/core/pages.dart';
import 'package:jalan_syurga/core/routers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: Routers.home,
      initialBinding: AppBindings(),
      getPages: Pages.pages,
    );
  }
}
