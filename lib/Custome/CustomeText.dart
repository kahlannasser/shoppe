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
        fontSize: 22,
        fontWeight: FontWeight.w300,
      ),
      textAlign: TextAlign.center,
    );
  }
}
class CustomeTextnormal400 extends StatelessWidget {

  const CustomeTextnormal400({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Hello, Romina!!",
      style: const TextStyle(
        color: Colors.black,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}