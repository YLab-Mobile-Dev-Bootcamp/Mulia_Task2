import 'package:get/get.dart';

import '../model/Menu.dart';

class AddController extends GetxController {
  var menuItem = <Menu>[].obs;
  int get cartCount => menuItem.length;
  double get totalAmount =>
      menuItem.fold(0.0, (sum, element) => sum + element.price);

  addToCart(Menu menu) {
    menuItem.add(menu);
  }
}
