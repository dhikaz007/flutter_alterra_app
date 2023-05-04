import 'package:flutter/material.dart';

import '../../../../../../utils/alta_constants.dart';
import '../../../../../../utils/alta_widgets.dart';

class AccountSettingList extends StatelessWidget {
  final TextEditingController? controller;
  final String name;
  final VoidCallback onPressed;
  final ValueChanged<String> onChanged;
  const AccountSettingList(
      {super.key,
      this.controller,
      required this.name,
      required this.onChanged,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AltaText(
                context: context,
                text: name,
                style: AltaTextStyle.body1,
                color: AltaColor.darkBlue,
                fontWeight: CustomFontWeight.normal,
              ),
              TextField(
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: AltaColor.darkGray),
                controller: controller,
                onChanged: onChanged,
                decoration: InputDecoration(
                  border: const UnderlineInputBorder(),
                  suffixIcon: AltaTextButton(
                      style: const ButtonStyle(
                        padding: MaterialStatePropertyAll(EdgeInsets.zero),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      onPressed: onPressed,
                      child: AltaText(
                        context: context,
                        text: 'Ubah',
                        style: AltaTextStyle.body1,
                        color: AltaColor.tangerine,
                        fontWeight: CustomFontWeight.bold,
                      )),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
