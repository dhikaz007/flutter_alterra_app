import 'package:flutter/material.dart';

class AltaSizedBox extends StatelessWidget {
  final double? height;
  final double? width;
  const AltaSizedBox({
    super.key,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
