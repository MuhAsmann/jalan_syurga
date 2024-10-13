import 'package:get/get.dart';
import 'package:jalan_syurga/presentation/controllers/about_controller.dart';

class AboutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AboutController());
  }
}
