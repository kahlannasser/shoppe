import 'package:flutter/material.dart';

class LineKeyboard extends StatelessWidget {
  const LineKeyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // عنصر إدخال النص الذي يفتح الكيبورد
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'اكتب شيئًا هنا...',
                ),
              ),
            ),
          ),
          // خط في أسفل الشاشة
          const Line(),
        ],
      ),
    );
  }
}

class Line extends StatelessWidget {
  const Line({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 3),
        child: Container(
          height: 5,
          width: 170,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    );
  }
}


