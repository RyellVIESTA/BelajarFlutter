
import 'package:aplication_project/controller/DetailUserController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailUserPage extends StatelessWidget {
  DetailUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DetailUserController());

    return Scaffold(
      appBar: AppBar(title: const Text("Detail User")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),

          Text(
            controller.name,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            "@${controller.username}",
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),

          const SizedBox(height: 20),

          Text(
            controller.email,
            style: const TextStyle(fontSize: 16),
          ),

          const SizedBox(height: 15),

          Text(
            controller.phone,
            style: const TextStyle(fontSize: 16),
          ),

          const SizedBox(height: 15),

          Text(
            controller.website,
            style: const TextStyle(fontSize: 16),
          ),

          const SizedBox(height: 25),

          const Text(
            "Address",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            "${controller.street}, ${controller.suite}",
            style: const TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
          ),

          Text(
            "${controller.city}, ${controller.zipcode}",
            style: const TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
          ),

          const SizedBox(height: 25),

          const Text(
            "Company",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            controller.company,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
