import 'package:flutter/material.dart';

class AltaLogo extends StatelessWidget {
  final String imgPath;
  final double width;
  final double height;
  final AlignmentGeometry alignment;
  const AltaLogo({
    super.key,
    required this.imgPath,
    required this.width,
    required this.height,
    required this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imgPath,
      width: width,
      height: height,
      alignment: alignment,
    );
  }
}
