import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final TextInputType type;
  final String hint;
  final TextEditingController txtController;
  final double radius;

  const MyTextfield({
    super.key,
    this.type = TextInputType.text,
    required this.hint,
    required this.txtController,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: type,
      controller: txtController,
      decoration: InputDecoration(
        hint: Text(hint),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}