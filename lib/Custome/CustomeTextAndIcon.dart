import 'package:flutter/material.dart';

class TextIcon extends StatefulWidget {
  final Widget Navigators;
  final String text;
  const TextIcon({Key? key, required this.text,required this.Navigators})
      : super(key: key);

  @override
  State<TextIcon> createState() => _TextIconState();
}

class _TextIconState extends State<TextIcon> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.text, // إزالة const لتعمل مع النص الديناميكي
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Colors.black26,
              ),
            ),
            const SizedBox(width: 20),
            Container(
              width: 35,
              height: 35,
              decoration: const BoxDecoration(
                color: Color(0xFF004CFF),
                borderRadius: BorderRadius.all(Radius.circular(500)),
              ),
              child: IconButton(
                icon:Icon(Icons.keyboard_tab_sharp),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => widget.Navigators));
                },
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
