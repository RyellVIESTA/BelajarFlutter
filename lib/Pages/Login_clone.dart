import 'package:aplication_project/Coponents/my_button.dart';
import 'package:flutter/material.dart';
import 'package:aplication_project/Coponents/my_textField.dart';
import 'package:aplication_project/Coponents/my_text.dart';

class LoginClone extends StatelessWidget {
  const LoginClone({super.key});

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
                  txtController: TextEditingController(),
                  radius: 10,
                ),
              ),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                child: MyTextfield(
                  hint: 'Password',
                  txtController: TextEditingController(),
                  radius: 10,
                ),
              ),

              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 15,
                ),
                width: double.infinity,
                child: MyButton(
                  onPressed: () {},
                  text: 'Login',
                  color: const Color.fromARGB(255, 255, 255, 255),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1877F2),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
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

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                width: double.infinity,
                child: MyButton(
                  onPressed: () {},
                  text: 'Buat akun baru',
                  color: const Color.fromARGB(255, 24, 119, 242),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    side: const BorderSide(
                      color: Color.fromARGB(255, 24, 119, 242),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
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
