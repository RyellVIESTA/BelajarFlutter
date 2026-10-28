
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Menu/Home.dart';
import '../Menu/History.dart';
import '../Menu/profile.dart';

class MainMenuController extends GetxController {
  var selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  final List<Widget> listPages = [
    HomePage(),
    HistoryPage(),
    ProfilePage(),
  ];
}
