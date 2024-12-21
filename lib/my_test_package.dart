library;

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    print("CustomButton build");
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
