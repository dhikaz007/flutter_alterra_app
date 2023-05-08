import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/alta_constants.dart';
import '../utils/alta_widgets.dart';
// import 'faq_page/view/ui/faq_page.dart';
import 'home/home_page/view/ui/home_page.dart';
// import 'profile_page/view/ui/profile_page.dart';

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  static final ScrollController _scrollController = ScrollController();

  static final List<Widget> _widgetOptions = [
    HomePage(scrollController: _scrollController),
    // const CoursePage(),
    // const FaqPage(),
    // const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> selectedIndex = ValueNotifier(0);
    return ValueListenableBuilder(
      valueListenable: selectedIndex,
      builder: (context, selectedIndexValue, _) => Scaffold(
        body: _widgetOptions.elementAt(selectedIndexValue),
        bottomNavigationBar: ScrollToHideWidget(
          scrollController: _scrollController,
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icon/homepage_section/svg/home_icon.svg',
                  width: 24,
                  height: 24,
                ),
                activeIcon: SvgPicture.asset(
                  'assets/icon/homepage_section/svg/home_fill_icon.svg',
                  width: 24,
                  height: 24,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icon/homepage_section/svg/course_icon.svg',
                  width: 24,
                  height: 24,
                ),
                activeIcon: SvgPicture.asset(
                  'assets/icon/homepage_section/svg/course_fill_icon.svg',
                  width: 24,
                  height: 24,
                ),
                label: 'Course',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icon/homepage_section/svg/faq_icon.svg',
                  width: 24,
                  height: 24,
                ),
                activeIcon: SvgPicture.asset(
                  'assets/icon/homepage_section/svg/faq_fill_icon.svg',
                  width: 24,
                  height: 24,
                ),
                label: 'FAQ',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icon/homepage_section/svg/profile_icon.svg',
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
