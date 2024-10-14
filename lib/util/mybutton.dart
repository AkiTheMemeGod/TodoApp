// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  Mybutton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: const Color.fromARGB(255, 127, 92, 202),
      height: 50,
      child: Text(
        text,
        style: TextStyle(fontFamily: "Monospace", color: Colors.white),
      ),
    );
  }
}
