import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/main_menu_controller.dart';

class MainMenuDrawerPage extends StatelessWidget {
  MainMenuDrawerPage({super.key});

  final controller = Get.find<MainMenuController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: const Text(
            'Main Menu Drawer',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blue,
        ),

        drawer: NavigationDrawer(
          selectedIndex: controller.selectedIndex.value,

          onDestinationSelected: (index) {
            controller.changePage(index);
            Navigator.pop(context);
          },

          children: const [
            Padding(
              padding: EdgeInsets.fromLTRB(28, 24, 16, 10),
              child: Text(
                'Select Page',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            NavigationDrawerDestination(
              icon: Icon(Icons.home),
              label: Text('Home'),
            ),

            NavigationDrawerDestination(
              icon: Icon(Icons.history),
              label: Text('History'),
            ),

            NavigationDrawerDestination(
              icon: Icon(Icons.person),
              label: Text('Profile'),
            ),
          ],
        ),

        body: IndexedStack(
          index: controller.selectedIndex.value,
          children: controller.listPages,
        ),
      ),
    );
  }
}