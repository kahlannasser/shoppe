import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class imagewhite extends StatefulWidget {

  const imagewhite({super.key});

  @override
  State<imagewhite> createState() => _imagewhiteState();
}

class _imagewhiteState extends State<imagewhite> {
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset('Assest/CreateAccountone.svg',);

  }
}
class imagewhiteone extends StatefulWidget {

  const imagewhiteone({super.key});

  @override
  State<imagewhiteone> createState()=>  _imagewhiteoneState();
}

class _imagewhiteoneState extends State<imagewhiteone> {
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset('Assest/CreateAccountone.svg');

  }
}

class imageBule extends StatefulWidget {

  const imageBule({super.key});

  @override
  State<imageBule> createState() => _imageBuleState();
}

class _imageBuleState extends State<imageBule> {
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset('Assest/CreateAccounttwo.svg');

  }
}

class ImageCamera extends StatefulWidget {

  const ImageCamera({super.key});

  @override
  State<ImageCamera> createState() => _ImageCameraState();
}

class _ImageCameraState extends State<ImageCamera> {
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset('Assest/camera.svg');

  }
}
class Imagesbule extends StatefulWidget {

  const Imagesbule({super.key});

  @override
  State<Imagesbule> createState() =>  _ImagesbuleState();
}

class _ImagesbuleState extends State<Imagesbule> {
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset('Assest/bubblle.svg');

  }
}


class Imagebuldes extends StatefulWidget {
  const Imagebuldes({super.key});

  @override
  _ImagebuldesState createState() => _ImagebuldesState();
}

class _ImagebuldesState extends State<Imagebuldes> {
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset('Assest/co.svg');
  }
}

class bubble extends StatefulWidget {
  const bubble({super.key});

  @override
  State<bubble> createState() => _bubbleState();
}

class _bubbleState extends State<bubble> {
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset('Assest/bubble.svg');
  }
}
class CircleImage extends StatelessWidget {
  final String imagePath;

  const CircleImage({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      maxRadius: 50,
      child: ClipOval(
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
          width: 90,
          height: 90,
        ),
      ),
    );
  }
}

