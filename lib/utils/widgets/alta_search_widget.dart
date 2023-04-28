import 'package:flutter/material.dart';
import '../constant/alta_color.dart';

class AltaSearchWidget extends StatelessWidget {
  final String hintText;
  final bool? filled;
  final Widget? prefixIcon;
  const AltaSearchWidget(
      {super.key, required this.hintText, this.filled, this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          fillColor: AltaColor.white,
          filled: filled,
          prefixIcon: prefixIcon,
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          hintText: hintText),
    );
  }
}
