import 'package:flutter/material.dart';

class AltaPrimaryButton extends StatelessWidget {
  final ButtonStyle? style;
  final VoidCallback onPressed;
  final Widget child;
  const AltaPrimaryButton({
    super.key,
    this.style,
    required this.onPressed,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: style,
      onPressed: onPressed,
      child: child,
    );
  }
}
