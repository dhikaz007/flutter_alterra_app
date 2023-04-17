import 'package:flutter/material.dart';

class AltaCircleWidget extends StatelessWidget {
  final double? left;
  final double? top;
  final double? right;
  final double? bottom;
  final double? height;
  final double? width;
  final Color? color;
  const AltaCircleWidget({
    super.key,
    this.left,
    this.top,
    this.right,
    this.bottom,
    this.height,
    this.width,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      right: right,
      bottom: bottom,
      child: ClipOval(
        child: Container(
          height: height,
          width: width,
          color: color,
        ),
      ),
    );
  }
}
