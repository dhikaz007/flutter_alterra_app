import 'package:flutter/material.dart';

import '../alta_constant.dart';

class AltaTextField extends StatelessWidget {
  final TextEditingController? controller;
  final bool? obscureText;
  final String hintText;
  final TextInputType? keyboardType;
  final FormFieldValidator<String>? validator;
  final int? maxLines;
  final String? errorText;
  final double? borderRadius;
  final double? focusedBorderRadius;
  final BorderSide? borderSide;
  final bool? filled;
  final Color? fillColor;
  final TextCapitalization? textCapitalization;
  final ValueChanged<String>? onChanged;
  final FormFieldSetter<String>? onSaved;
  const AltaTextField({
    super.key,
    this.controller,
    this.obscureText,
    required this.hintText,
    this.keyboardType,
    this.validator,
    this.maxLines,
    this.errorText,
    this.borderRadius,
    this.focusedBorderRadius,
    this.borderSide,
    this.filled,
    this.fillColor,
    this.textCapitalization,
    this.onChanged,
    this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      controller: controller,
      onChanged: onChanged,
      maxLines: maxLines ?? 1,
      keyboardType: keyboardType,
      validator: validator,
      onSaved: onSaved,
      textCapitalization: textCapitalization ?? TextCapitalization.none,
      decoration: InputDecoration(
        errorText: errorText,
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
