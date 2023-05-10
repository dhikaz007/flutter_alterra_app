import 'package:flutter/material.dart';

import '../../../../../utils/alta_widgets.dart';
import '../../../../../utils/alta_constant.dart';

import '../../../course_page/view/ui/course_page.dart';
import '../../../faq_page/view/ui/faq_page.dart';
import '../../../../profile/profile_page/view/ui/profile_page.dart';
import 'home_page.dart';

class MainHomePage extends StatelessWidget {
  const MainHomePage({super.key});

  static final ScrollController _scrollController = ScrollController();

  static final List<Widget> _widgetOptions = [
    HomePage(scrollController: _scrollController),
    CoursePage(scrollController: _scrollController),
    FaqPage(scrollController: _scrollController),
    ProfilePage(scrollController: _scrollController),
  ];

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> selectedIndex = ValueNotifier(0);
    return ValueListenableBuilder(
      valueListenable: selectedIndex,
      builder: (context, selectedIndexValue, _) => AltaScaffold(
        isAppbar: AppBarVisibility.off,
        scaffoldColor: Colors.transparent,
        body: _widgetOptions.elementAt(selectedIndexValue),
        bottomNavigationBar: ScrollToHideWidget(
          scrollController: _scrollController,
          child: BottomNavigationBar(
            backgroundColor: AltaColor.white,
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: AltaSvg(
                  svgPath: 'assets/icon/login_section/svg/home_icon.svg',
                  width: 24,
                  height: 24,
                ),
                activeIcon: AltaSvg(
                  svgPath: 'assets/icon/login_section/svg/home_fill_icon.svg',
                  width: 24,
                  height: 24,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: AltaSvg(
                  svgPath: 'assets/icon/login_section/svg/course_icon.svg',
                  width: 24,
                  height: 24,
                ),
                activeIcon: AltaSvg(
                  svgPath: 'assets/icon/login_section/svg/course_fill_icon.svg',
                  width: 24,
                  height: 24,
                ),
                label: 'Course',
              ),
              BottomNavigationBarItem(
                icon: AltaSvg(
                  svgPath: 'assets/icon/login_section/svg/faq_icon.svg',
                  width: 24,
                  height: 24,
                ),
                activeIcon: AltaSvg(
                  svgPath: 'assets/icon/login_section/svg/faq_fill_icon.svg',
                  width: 24,
                  height: 24,
                ),
                label: 'FAQ',
              ),
              BottomNavigationBarItem(
                icon: AltaSvg(
                  svgPath: 'assets/icon/login_section/svg/profile_icon.svg',
                  width: 24,
                  height: 24,
                ),
                label: 'Profile',
              ),
            ],
            currentIndex: selectedIndexValue,
            selectedItemColor: AltaColor.darkBlue,
            unselectedItemColor: AltaColor.darkBlue,
            showUnselectedLabels: true,
            onTap: (index) => selectedIndex.value = index,
          ),
        ),
      ),
    );
  }
}
