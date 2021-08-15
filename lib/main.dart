import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:task3_flutter/menu_binding.dart';
import 'package:task3_flutter/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      getPages: Routes.route,
      initialRoute: '/home',
      initialBinding: MenuBinding(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
