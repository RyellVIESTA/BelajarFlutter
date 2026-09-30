import 'package:aplication_project/Coponents/my_button.dart';
import 'package:aplication_project/Coponents/my_text.dart';
import 'package:aplication_project/controller/confirmRegistration_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  const ConfirmRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConfirmRegistrationController());

    return Scaffold(
      appBar: AppBar(title: Text("Confirm Registration")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MyText(
            text: "Nama : " + controller.nama,
            color: Colors.black,
            fontSize: 20,
          ),

          const SizedBox(height: 20),

          MyText(
            text: "Alamat : " + controller.alamat,
            color: Colors.black,
            fontSize: 20,
          ),

          const SizedBox(height: 20),

          MyText(
            text: "Jenis Kelamin : " + controller.jenisKelamin,
            color: Colors.black,
            fontSize: 20,
          ),

          const SizedBox(height: 20),

          MyText(
            text: "Nomor WA : " + controller.nomorWA,
            color: Colors.black,
            fontSize: 20,
          ),

          const SizedBox(height: 20),

          MyText(
            text: "Email : " + controller.email,
            color: Colors.black,
            fontSize: 20,
          ),

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyButton(
                onPressed: () {
                  Get.back();
                },
                text: "Oke",
                color: Colors.black,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 195, 255),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
