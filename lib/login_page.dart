import 'package:aplication_project/Coponents/my_textField.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Page')),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(25),
            child: MyTextfield(
              hint: 'Username',
              txtController: TextEditingController(),
              radius: 10,
            ),
          ),
          Container(
            margin: EdgeInsets.all(25),
            child: MyTextfield(
              hint: 'Password',
              txtController: TextEditingController(),
              radius: 10,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Login',
                    style: TextStyle(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 255, 0, 0),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Register',
                    style: TextStyle(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 255, 0, 0),
                    ),
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
