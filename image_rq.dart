import 'package:flutter/material.dart';

class ImageRQWidget extends StatelessWidget {
  const ImageRQWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/imagenes/codigoqr.png',
      height: 100,
      width: 200,
    );
  }
}