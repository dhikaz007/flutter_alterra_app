import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ScrollToHideWidget extends StatefulWidget {
  final Widget child;
  final ScrollController scrollController;
  final Duration duration;
  const ScrollToHideWidget({
    super.key,
    required this.child,
    required this.scrollController,
    this.duration = const Duration(milliseconds: 200),
  });

  @override
  State<ScrollToHideWidget> createState() => _ScrollToHideWidgetState();
}

class _ScrollToHideWidgetState extends State<ScrollToHideWidget> {
  bool isVisible = true;

  @override
  void initState() {
    widget.scrollController.addListener(_listen);
    super.initState();
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(_listen);
    super.dispose();
  }

  void _listen() {
    final direction = widget.scrollController.position.userScrollDirection;
    // if (widget.scrollController.position.pixels >= 200) {
    //   _hide();
    // } else {
    //   _show();
    // }
    if (direction == ScrollDirection.forward) {
      _show();
    } else if (direction == ScrollDirection.reverse) {
      _hide();
    }
  }

  void _show() {
    if (!isVisible) setState(() => isVisible = true);
  }

  void _hide() {
    if (isVisible) setState(() => isVisible = false);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: widget.duration,
      height: isVisible ? kBottomNavigationBarHeight : 0,
      child: Wrap(children: [widget.child]),
    );
  }
}
