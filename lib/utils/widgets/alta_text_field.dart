import 'package:flutter/material.dart';

import '../constant/alta_border_radius.dart';
import '../constant/alta_color.dart';
import '../constant/alta_spacing.dart';

class AltaTextField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;
  const AltaTextField({
    super.key,
    required this.hintText,
    this.onChanged,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AltaSpacing.space12,
          vertical: AltaSpacing.space8,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: AltaColor.altGray,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AltaBorderRadius.radius8),
        ),
      ),
    );
  }
}
