import 'package:flutter/material.dart';

import '../alta_constant.dart';

class AltaPrimaryIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget icon;
  final Widget label;
  const AltaPrimaryIconButton({
    Key? key,
    required this.onPressed,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AltaColor.darkBlue),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AltaBorderRadius.radius14),
        )),
        padding: MaterialStateProperty.all(const EdgeInsets.symmetric(
          vertical: AltaBorderRadius.radius8,
          horizontal: AltaBorderRadius.radius12,
        )),
        fixedSize: MaterialStateProperty.all(const Size(156, 40)),
        elevation: MaterialStateProperty.all(0),
      ),
      icon: icon,
      label: label,
      onPressed: onPressed,
    );
  }
}
