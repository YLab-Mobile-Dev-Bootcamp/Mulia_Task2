import 'package:get/get.dart';
import 'package:task5_uif_lutter/routes/home_binding.dart';
import 'package:task5_uif_lutter/view/home_page.dart';

class Routes {
  static final route = [
    GetPage(
      name: '/home/',
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
