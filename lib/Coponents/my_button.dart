import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final size;
  final Color color;
  final ButtonStyle? style;

  const MyButton({
    super.key,
    this.onPressed,
    required this.text,
    this.size,
    required this.color,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style:
          style ??
          ElevatedButton.styleFrom(
            backgroundColor: color,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
      child: Text(text, style: TextStyle(fontSize: 20, color: color)),
    );
  }
}
