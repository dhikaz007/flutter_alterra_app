import 'package:flutter/material.dart';

import '../constant/alta_border_radius.dart';
import '../constant/alta_color.dart';
import '../constant/alta_spacing.dart';

class AltaTextField extends StatelessWidget {
  final TextEditingController? controller;
  final bool? obscureText;
  final String hintText;
  final ValueChanged<String>? onChanged;

  const AltaTextField({
    super.key,
    this.controller,
    this.obscureText,
    required this.hintText,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText ?? false,
      controller: controller,
      onChanged: onChanged,
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
          borderRadius: BorderRadius.circular(AltaBorderRadius.radius8),
        ),
      ),
    );
  }
}
