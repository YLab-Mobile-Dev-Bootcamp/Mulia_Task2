import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task5_uif_lutter/routes/home_binding.dart';
import 'package:task5_uif_lutter/routes/routes.dart';

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
      initialBinding: HomeBinding(),
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
    );
  }
}
