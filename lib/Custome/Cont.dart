import 'package:flutter/material.dart';
class Cont extends StatefulWidget {
  const Cont({super.key});

  @override
  State<Cont> createState() => _ContState();
}

class _ContState extends State<Cont> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            offset: Offset(20, 20),

            blurRadius: 60,

          )
        ],
          color: Colors.white54,
        borderRadius: BorderRadius.circular(3)
      ),

    );
  }
}
class ContCricle extends StatefulWidget {
  final Color color; // تغيير النوع إلى Color
  const ContCricle({super.key, required this.color});

  @override
  State<ContCricle> createState() => _ContCricleState(); // تعديل الاسم ليطابق اسم الفئة
}

class _ContCricleState extends State<ContCricle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        color: widget.color, // استخدام اللون
        borderRadius: BorderRadius.circular(10), // تعديل نصف القطر ليكون دائريًا مثاليًا
      ),
    );
  }
}
