import 'package:flutter/material.dart';
import 'package:flutter_alterra_app/utils/alta_widgets.dart';

class AltaIconButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double? splashRadius;
  final Color? color;
  final String svgAsset;
  final double? iconWidth;
  final double? iconHeight;
  const AltaIconButton({
    Key? key,
    this.onPressed,
    this.splashRadius,
    this.color,
    required this.svgAsset,
    this.iconWidth,
    this.iconHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: color,
      splashRadius: splashRadius,
      onPressed: onPressed,
      icon: AltaSvg(
        svgPath: svgAsset,
        width: iconWidth,
        height: iconHeight,
      ),
    );
  }
}
