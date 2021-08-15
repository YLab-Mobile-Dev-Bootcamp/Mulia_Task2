import 'package:get/get.dart';
import 'package:task3_flutter/controller/add_controller.dart';
import 'package:task3_flutter/controller/menu_controller.dart';

class MenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MenuController());
    Get.put(AddController());
  }
}
