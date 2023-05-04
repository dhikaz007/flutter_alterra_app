import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_alterra_app/utils/alta_widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/alta_constants.dart';
import 'widget/free_class_banner.dart';

class CoursePromoPage extends StatelessWidget {
  const CoursePromoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> activeIndex = ValueNotifier(0);
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 80,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: AltaColor.darkBlue,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: SvgPicture.asset(
                          'assets/icon/homepage_section/svg/arrow_white.svg')),
                  const SizedBox(width: AltaSpacing.space28),
                  AltaText(
                    context: context,
                    text: 'Promo',
                    style: AltaTextStyle.title1,
                    color: AltaColor.white,
                    fontWeight: CustomFontWeight.bold,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: AltaSpacing.space12),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AltaText(
                      context: context,
                      text: 'Rekomendasi',
                      style: AltaTextStyle.title1,
                      color: AltaColor.black,
                      fontWeight: CustomFontWeight.bold,
                    ),
                    const SizedBox(height: AltaSpacing.space12),
                    SizedBox(
                      height: 163,
                      width: MediaQuery.of(context).size.width,
                      child: ValueListenableBuilder(
                        valueListenable: activeIndex,
                        builder: (context, activeIndexValue, _) =>
                            CarouselSlider(
                          options: CarouselOptions(
                            height: 163,
                            viewportFraction: 1,
                            enableInfiniteScroll: false,
                            initialPage: 0,
                            enlargeCenterPage: true,
                            autoPlay: true,
                            scrollPhysics: const BouncingScrollPhysics(),
                            onPageChanged: (index, reason) =>
                                activeIndex.value = index,
                          ),
                          items: [
                            Image.asset(
                              'assets/images/homepage_section/png/flash_sale.png',
                              fit: BoxFit.fill,
                            ),
                            Image.asset(
                              'assets/images/homepage_section/png/flash_sale.png',
                              fit: BoxFit.fill,
                            ),
                            Image.asset(
                              'assets/images/homepage_section/png/flash_sale.png',
                              fit: BoxFit.fill,
                            ),
                          ].map((e) => e).toList(),
                        ),
                      ),
                    ),
                    const SizedBox(height: AltaSpacing.space12),
                    Center(
                      child: ValueListenableBuilder(
                        valueListenable: activeIndex,
                        builder: (context, activeIndexValue, _) =>
                            AnimatedSmoothIndicator(
                          activeIndex: activeIndexValue,
                          count: 3,
                          effect: const SlideEffect(
                              dotHeight: 8,
                              dotWidth: 8,
                              spacing: AltaSpacing.space8,
                              activeDotColor: AltaColor.darkGray,
                              dotColor: AltaColor.gray),
                        ),
                      ),
                    ),
                    const SizedBox(height: AltaSpacing.space16),
                    AltaText(
                      context: context,
                      text: 'Kelas Gratis',
                      style: AltaTextStyle.title1,
                      color: AltaColor.black,
                      fontWeight: CustomFontWeight.bold,
                    ),
                    const SizedBox(height: AltaSpacing.space16),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 361,
                      child: ListView(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: const [
                          FreeClassBanner(
                              imgAssets:
                                  'assets/images/homepage_section/png/banner1.png'),
                          SizedBox(width: AltaSpacing.space16),
                          FreeClassBanner(
                              imgAssets:
                                  'assets/images/homepage_section/png/banner2.png'),
                          SizedBox(width: AltaSpacing.space16),
                          FreeClassBanner(
                              imgAssets:
                                  'assets/images/homepage_section/png/banner2.png'),
                        ],
                      ),
                    ),
                    const SizedBox(height: AltaSpacing.space16),
                    AltaText(
                      context: context,
                      text: 'Promo Lain',
                      style: AltaTextStyle.title1,
                      color: AltaColor.black,
                      fontWeight: CustomFontWeight.bold,
                    ),
                    const SizedBox(height: AltaSpacing.space12),
                    Image.asset(
                        'assets/images/homepage_section/png/promo1.png'),
                    const SizedBox(height: AltaSpacing.space12),
                    Image.asset(
                        'assets/images/homepage_section/png/promo2.png'),
                    const SizedBox(height: AltaSpacing.space12),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
