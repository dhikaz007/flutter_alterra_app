import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/alta_widgets.dart';
import '../../../../../utils/alta_constant.dart';
import 'widget/free_class_banner.dart';

class CoursePromoPage extends StatelessWidget {
  const CoursePromoPage({super.key});

  static final ValueNotifier<int> _activeIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return AltaScaffold(
      isAppbar: AppBarVisibility.on,
      appBarColor: AltaColor.darkBlue,
      leadingAsset: 'assets/icon/homepage_section/svg/arrow_white.svg',
      leadingWidth: 24,
      leadingHeight: 24,
      onPressed: () => Navigator.of(context).pop(true),
      title: AltaText(
        context: context,
        text: 'Promo',
        style: AltaTextStyle.title1,
        color: AltaColor.white,
        fontWeight: CustomFontWeight.bold,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: AltaSpacing.space12),
            Padding(
              padding: const EdgeInsets.only(
                left: AltaSpacing.space16,
                right: AltaSpacing.space16,
              ),
              child: AltaText(
                context: context,
                text: 'Rekomendasi',
                style: AltaTextStyle.title1,
                color: AltaColor.black,
                fontWeight: CustomFontWeight.bold,
              ),
            ),
            const SizedBox(height: AltaSpacing.space12),
            SizedBox(
              height: 163,
              width: MediaQuery.of(context).size.width,
              child: ValueListenableBuilder(
                valueListenable: _activeIndex,
                builder: (context, activeIndexValue, _) => CarouselSlider(
                  options: CarouselOptions(
                    // viewportFraction: 1,
                    enableInfiniteScroll: false,
                    initialPage: 0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    scrollPhysics: const BouncingScrollPhysics(),
                    onPageChanged: (index, reason) =>
                        _activeIndex.value = index,
                  ),
                  items: const [
                    AltaLogo(
                      imgPath:
                          'assets/images/homepage_section/png/flash_sale.png',
                      fit: BoxFit.fill,
                      width: 344,
                      height: 162,
                      alignment: Alignment.center,
                    ),
                    AltaLogo(
                      imgPath:
                          'assets/images/homepage_section/png/flash_sale1.png',
                      fit: BoxFit.fill,
                      width: 344,
                      height: 162,
                      alignment: Alignment.center,
                    ),
                    AltaLogo(
                      imgPath:
                          'assets/images/homepage_section/png/flash_sale.png',
                      fit: BoxFit.fill,
                      width: 344,
                      height: 162,
                      alignment: Alignment.center,
                    ),
                  ].map((e) => e).toList(),
                ),
              ),
            ),
            const SizedBox(height: AltaSpacing.space12),
            Center(
              child: ValueListenableBuilder(
                valueListenable: _activeIndex,
                builder: (context, activeIndexValue, _) =>
                    AnimatedSmoothIndicator(
                  activeIndex: activeIndexValue,
                  count: 3,
                  effect: const SlideEffect(
                    dotHeight: 8,
                    dotWidth: 8,
                    spacing: AltaSpacing.space8,
                    activeDotColor: AltaColor.darkGray,
                    dotColor: AltaColor.gray,
                  ),
                ),
              ),
            ),
            const SizedBox(height: AltaSpacing.space16),
            Padding(
              padding: const EdgeInsets.only(
                left: AltaSpacing.space16,
                right: AltaSpacing.space16,
              ),
              child: AltaText(
                context: context,
                text: 'Kelas Gratis',
                style: AltaTextStyle.title1,
                color: AltaColor.black,
                fontWeight: CustomFontWeight.bold,
              ),
            ),
            const SizedBox(height: AltaSpacing.space16),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 380,
              child: ListView(
                padding: const EdgeInsets.only(left: AltaSpacing.space16),
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
            Padding(
              padding: const EdgeInsets.only(
                  left: AltaSpacing.space16, right: AltaSpacing.space16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: AltaSpacing.space16),
                  AltaText(
                    context: context,
                    text: 'Promo Lain',
                    style: AltaTextStyle.title1,
                    color: AltaColor.black,
                    fontWeight: CustomFontWeight.bold,
                  ),
                  const SizedBox(height: AltaSpacing.space12),
                  const Center(
                    child: AltaLogo(
                      imgPath: 'assets/images/homepage_section/png/promo1.png',
                      width: 342,
                      height: 164,
                      alignment: Alignment.center,
                    ),
                  ),
                  const SizedBox(height: AltaSpacing.space12),
                  const Center(
                    child: AltaLogo(
                      imgPath: 'assets/images/homepage_section/png/promo2.png',
                      width: 342,
                      height: 164,
                      alignment: Alignment.center,
                    ),
                  ),
                  const SizedBox(height: AltaSpacing.space12),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
