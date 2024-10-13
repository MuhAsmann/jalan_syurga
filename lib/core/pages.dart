import 'package:get/get.dart';
import 'package:jalan_syurga/core/routers.dart';
import 'package:jalan_syurga/presentation/bindings/about_binding.dart';
import 'package:jalan_syurga/presentation/bindings/home_binding.dart';
import 'package:jalan_syurga/presentation/pages/about_page.dart';
import 'package:jalan_syurga/presentation/pages/home_page.dart';

class Pages {
  static List<GetPage> pages = [
    GetPage(
      name: Routers.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routers.about,
      page: () => const AboutPage(),
      binding: AboutBinding(),
    ),
  ];
}
