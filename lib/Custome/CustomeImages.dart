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

