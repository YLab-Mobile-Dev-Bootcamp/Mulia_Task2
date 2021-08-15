import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:task3_flutter/view/add_page.dart';
import 'package:task3_flutter/view/home_page.dart';

class Routes {
  static final route = [
    GetPage(name: '/home', page: () => HomePage()),
    GetPage(name: '/add', page: () => AddPage())
  ];
}
