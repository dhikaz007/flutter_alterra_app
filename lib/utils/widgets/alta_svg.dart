import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AltaSvg extends StatelessWidget {
  final String svgPath;
  final double? width;
  final double? height;
  final ColorFilter? colorFilter;
  const AltaSvg({
    super.key,
    required this.svgPath,
    required this.width,
    required this.height,
    this.colorFilter,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svgPath,
      width: width,
      height: height,
      colorFilter: colorFilter,
    );
  }
}
