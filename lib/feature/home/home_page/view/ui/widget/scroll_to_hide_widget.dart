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
  final ValueNotifier<bool> isVisible = ValueNotifier(true);

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

    if (direction == ScrollDirection.forward) {
      _show();
    } else if (direction == ScrollDirection.reverse) {
      _hide();
    }
  }

  void _show() => !isVisible.value ? isVisible.value = true : null;

  void _hide() => isVisible.value ? isVisible.value = false : null;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isVisible,
      builder: (context, isVisibleValue, child) => AnimatedContainer(
        duration: widget.duration,
        height: isVisibleValue ? kBottomNavigationBarHeight : 0,
        child: Wrap(children: [widget.child]),
      ),
    );
  }
}
