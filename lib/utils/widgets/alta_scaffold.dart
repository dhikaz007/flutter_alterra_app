import 'package:flutter/material.dart';

import 'alta_icon_button.dart';

import '../constant/alta_color.dart';

class AltaScaffold extends StatelessWidget {
  final Widget body;
  final String? leadingAsset;
  final double? leadingWidth;
  final double? leadingHeight;
  final Widget? title;
  final Color? appBarColor;
  final VoidCallback? onPressed;
  final List<Widget>? actions;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;
  const AltaScaffold({
    Key? key,
    required this.body,
    this.leadingAsset,
    this.leadingWidth,
    this.leadingHeight,
    this.title,
    this.appBarColor,
    this.onPressed,
    this.actions,
    this.floatingActionButton,
    this.bottomNavigationBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AltaColor.white,
      child: Scaffold(
        appBar: AppBar(
          title: title,
          backgroundColor: appBarColor,
          elevation: 0,
          leading: AltaIconButton(
            color: AltaColor.black,
            svgAsset: leadingAsset ?? '',
            onPressed: onPressed,
            iconWidth: leadingWidth,
            iconHeight: leadingHeight,
          ),
          actions: actions,
        ),
        body: body,
        floatingActionButton: floatingActionButton,
        bottomNavigationBar: bottomNavigationBar,
      ),
    );
  }
}
