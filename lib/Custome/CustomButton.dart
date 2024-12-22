import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  final String text;
   CustomButton({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return  MaterialButton(
      color: const Color(0xFF004CFF),
      onPressed: () {
        // Action on button press
      },
      child:  Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w200,
          color: Colors.white,
        ),
      ),
    );
  }
}

