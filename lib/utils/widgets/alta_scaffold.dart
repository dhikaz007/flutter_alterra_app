import 'package:flutter/material.dart';

import '../alta_constant.dart';
import 'alta_icon_button.dart';

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

enum LeadingVisibility { on, off }

extension LeadingIndicator on LeadingVisibility {
  bool get valueLeading {
    switch (this) {
      case LeadingVisibility.on:
        return true;
      case LeadingVisibility.off:
        return false;
    }
  }
}

class AltaScaffold extends StatelessWidget {
  final Color? scaffoldColor;
  final AppBarVisibility isAppbar;
  final LeadingVisibility isLeading;
  final bool? centerTitle;
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
    this.scaffoldColor,
    required this.isAppbar,
    required this.isLeading,
    this.centerTitle,
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
    return Scaffold(
      
      backgroundColor: scaffoldColor,
      appBar: isAppbar.valueAppbar == true
          ? AppBar(
            automaticallyImplyLeading: false,
              title: title,
              backgroundColor: appBarColor,
              elevation: 0,
              leading: isLeading.valueLeading == true
                  ? AltaIconButton(
                      color: AltaColor.black,
                      svgAsset: leadingAsset ?? '',
                      onPressed: onPressed,
                      iconWidth: leadingWidth,
                      iconHeight: leadingHeight,
                    )
                  : null,
              titleSpacing: isLeading.valueLeading == true ? 0.0 : 24.0,
              centerTitle: centerTitle ?? false,
              actions: actions,
            )
          : null,
      body: body,
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
