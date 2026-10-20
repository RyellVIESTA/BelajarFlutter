import 'package:aplication_project/KalkulatorSTLE.dart';
import 'package:aplication_project/Pages/Login_clone.dart';
import 'package:aplication_project/Routes.dart';
import 'package:aplication_project/kalkulator_page.dart';
import 'package:aplication_project/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: Routes.ListProduct,
      getPages: Routes.pages,
    );
  }
}
