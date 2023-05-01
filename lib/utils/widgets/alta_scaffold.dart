import 'package:flutter/material.dart';

import 'alta_icon_button.dart';

import '../constant/alta_color.dart';

enum AppBarVisibility { on, off }

extension AppbarIndicator on AppBarVisibility {
  bool get valueAppbar {
    switch (this) {
      case AppBarVisibility.on:
        return true;
      case AppBarVisibility.off:
        return false;
    }
  }
}

class AltaScaffold extends StatelessWidget {
  final AppBarVisibility isAppbar;
  final Widget body;
  final String? leadingAsset;
  final double? leadingWidth;
  final double? leadingHeight;
  final Widget? title;
  final Color? appBarColor;
  final VoidCallback? onPressed;
  final List<Widget>? actions;
  final Widget? floatingActionButton;
  const AltaScaffold({
    Key? key,
    required this.isAppbar,
    required this.body,
    this.leadingAsset,
    this.leadingWidth,
    this.leadingHeight,
    this.title,
    this.appBarColor,
    this.onPressed,
    this.actions,
    this.floatingActionButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AltaColor.white,
      child: Scaffold(
        appBar: isAppbar.valueAppbar == true
            ? AppBar(
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
              )
            : null,
        body: body,
        floatingActionButton: floatingActionButton,
      ),
    );
  }
}
