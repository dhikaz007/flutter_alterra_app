import 'package:flutter/material.dart';

class AltaLogo extends StatelessWidget {
  final String imgPath;
  final double width;
  final double height;
  final AlignmentGeometry alignment;
  final BoxFit? fit;
  const AltaLogo({
    super.key,
    required this.imgPath,
    required this.width,
    required this.height,
    required this.alignment,
    this.fit,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imgPath,
      width: width,
      height: height,
      alignment: alignment,
      fit: fit,
    );
  }
}
