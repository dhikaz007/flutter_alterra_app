import 'package:flutter/material.dart';

class AltaPrimaryButton extends StatelessWidget {
  final MaterialStateProperty<Color?>? backgroundColor;
  final double borderRadius;
  final double paddingVertical;
  final double paddingHorizontal;
  final VoidCallback onPressed;
  final Widget child;
  final MaterialStateProperty<BorderSide?>? side;
  const AltaPrimaryButton({
    super.key,
    this.backgroundColor,
    required this.borderRadius,
    required this.paddingVertical,
    required this.paddingHorizontal,
    required this.onPressed,
    required this.child,
    this.side,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        side: side,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(
            vertical: paddingVertical,
            horizontal: paddingHorizontal,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        backgroundColor: backgroundColor,
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
