import 'package:get/get.dart';
import 'package:task5_uif_lutter/controller/productController.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProductController());
  }
}
