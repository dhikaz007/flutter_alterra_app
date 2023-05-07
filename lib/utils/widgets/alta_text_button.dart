import 'package:flutter/material.dart';

class AltaTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  const AltaTextButton({
    super.key,
    required this.onPressed,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: const ButtonStyle(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
