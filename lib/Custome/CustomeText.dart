import 'package:flutter/material.dart';

class CustomeTextbold extends StatelessWidget {
  final String text;
  const CustomeTextbold({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 50,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class CustomeTextnormal extends StatelessWidget {
  final String text;
  const CustomeTextnormal({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w200,
      ),
      textAlign: TextAlign.center,
    );
  }
}
