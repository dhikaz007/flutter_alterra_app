import 'package:flutter/material.dart';

import '../constant/alta_color.dart';
import '../constant/alta_spacing.dart';

class AltaTextField extends StatelessWidget {
  final TextEditingController? controller;
  final bool? obscureText;
  final String hintText;
  final int? maxLines;
  final double? borderRadius;
  final double? focusedBorderRadius;
  final BorderSide? borderSide;
  final bool? filled;
  final Color? fillColor;
  final ValueChanged<String>? onChanged;
  const AltaTextField({
    super.key,
    this.controller,
    this.obscureText,
    required this.hintText,
    this.maxLines,
    this.borderRadius,
    this.focusedBorderRadius,
    this.borderSide,
    this.filled,
    this.fillColor,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText ?? false,
      controller: controller,
      onChanged: onChanged,
      maxLines: maxLines ?? 1,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AltaSpacing.space16,
          vertical: AltaSpacing.space12,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: AltaColor.altGray,
          fontSize: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 0),
          borderSide: borderSide ?? BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 0),
          borderSide: borderSide ?? BorderSide.none,
        ),
        filled: filled ?? false,
        fillColor: fillColor,
      ),
    );
  }
}
