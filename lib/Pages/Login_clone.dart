import 'package:aplication_project/Coponents/my_button.dart';
import 'package:flutter/material.dart';
import 'package:aplication_project/Coponents/my_textField.dart';
import 'package:aplication_project/Coponents/my_text.dart';
import 'package:get/get.dart';

import '../controller/LoginCloneController.dart';

class LoginClone extends StatelessWidget {
  LoginClone({super.key});

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 60),

              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: const MyText(
                  text: 'Facebook',
                  color: Color(0xFF1877F2),
                  fontSize: 32,
                ),
              ),

              Container(
                margin: EdgeInsets.all(25),
                child: MyTextfield(
                  hint: 'Username',
                  txtController: controller.txtUsername,
                  radius: 10,
                ),
              ),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                child: MyTextfield(
                  hint: 'Password',
                  txtController: controller.txtPassword,
                  radius: 10,
                  isPassword: true,
                ),
              ),

              Container(
                child: const MyText(
                  text: 'Lupa kata sandi?',
                  color: Color.fromARGB(255, 114, 114, 114),
                  fontSize: 14,
                ),
              ),

              const SizedBox(height: 20),

              Obx(
                () => controller.isLoading.value
                    ? Center(child: CircularProgressIndicator())
                    : Container(
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                        width: double.infinity,
                        height: 50,
                        child: OutlinedButton(
                          onPressed: () {
                            controller.login();
                          },
                          child: const Text("Login"),
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
