
import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final TextInputType type;
  final String hint;
  final TextEditingController txtController;
  final double radius;
  final bool isPassword;

  const MyTextfield({
    super.key,
    this.type = TextInputType.text,
    required this.hint,
    required this.txtController,
    required this.radius,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: type,
      controller: txtController,
      obscureText: isPassword,
      decoration: InputDecoration(
        hint: Text(hint),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}
