import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final Color color;
  final Widget Navigators;
  const CustomButton({super.key, required this.text,required this.color,required this.Navigators});

  @override
  State<CustomButton> createState() => _State();
}

class _State extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 150,
      height:60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
      ),
      child: ElevatedButton(

        style: ElevatedButton.styleFrom(
            backgroundColor:widget.color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => widget.Navigators));
        },
        child: Text(
          widget.text,
          style: const TextStyle(
            fontWeight: FontWeight.w200,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

