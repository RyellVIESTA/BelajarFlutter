import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/main_menu_controller.dart';

class MainMenuDrawerPage extends StatelessWidget {
  MainMenuDrawerPage({super.key});

  final controller = Get.find<MainMenuController>();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blueAccent,
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Figo Store',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Get.back();
              controller.changePage(0);
            },
          ),

          ListTile(
            leading: const Icon(Icons.history),
            title: const Text('History'),
            onTap: () {
              Get.back();
              controller.changePage(1);
            },
          ),

          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {
              Get.back();
              controller.changePage(2);
            },
          ),
        ],
      ),
    );
  }
}