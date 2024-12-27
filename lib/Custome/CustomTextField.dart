import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String text;
  final double borderRadius;
  final Widget? prefix;

  CustomTextField({
    super.key,
    required this.text,
    required this.borderRadius,
    this.prefix, required TextEditingController controller, required TextDirection textDirection,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: TextFormField(
        onTap: () {},
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: BorderSide(color: Color(0xFF10606)),
          ),
          hintText: widget.text,
          prefix: widget.prefix,
        ),
      ),
    );
  }
}
