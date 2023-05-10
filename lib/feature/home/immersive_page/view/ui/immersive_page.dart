import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/alta_constant.dart';
import '../../../../../utils/alta_widgets.dart';
import 'widget/immersive_program_card_widget.dart';
import 'widget/output_immersive_widget.dart';

class ImmersivePage extends StatelessWidget {
  const ImmersivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> activeIndex = ValueNotifier(1);

    return AltaScaffold(
      isLeading: LeadingVisibility.on,
      isAppbar: AppBarVisibility.on,
      scaffoldColor: AltaColor.white,
      appBarColor: AltaColor.darkBlue,
      leadingAsset: 'assets/icon/homepage_section/svg/back_icon.svg',
      leadingHeight: 24,
      leadingWidth: 24,
      title: AltaText(
        context: context,
        text: 'Immersive Program',
        style: AltaTextStyle.title1,
        fontWeight: CustomFontWeight.veryBold,
        color: AltaColor.white,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AltaSpacing.space16,
            vertical: AltaSpacing.space12,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AltaSpacing.space16,
                  vertical: AltaSpacing.space12,
                ),
                width: 360,
                height: 124,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(AltaBorderRadius.radius12),
                  color: AltaColor.tangerine,
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AltaText(
                          context: context,
                          text: 'Immersive Bootcamp Program',
                          style: AltaTextStyle.body2,
                          fontWeight: CustomFontWeight.semiBold,
                          color: AltaColor.white,
                        ),
                        AltaText(
                          context: context,
                          text: 'Bayar Nanti, Belajar Sekarang.',
                          style: AltaTextStyle.body2,
                          fontWeight: CustomFontWeight.bold,
                          color: AltaColor.white,
                        ),
                        AltaText(
                          context: context,
                          text:
                              'Raih karir impianmu sebagai Software Engineer \ntanpa merasa khawatir soal biaya. Bayar biaya \nprogram setelah dapat kerja!',
                          style: AltaTextStyle.body3,
                          fontWeight: CustomFontWeight.medium,
                          color: AltaColor.white,
                        ),
                      ],
                    ),
                    const SizedBox(width: AltaSpacing.space8),
                    const AltaLogo(
                      imgPath:
                          'assets/images/homepage_section/png/dummy_image.png',
                      width: 91,
                      height: 95,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AltaSpacing.space24),
              AltaText(
                context: context,
                text: 'Perusahaan Hiring Partnersn \nAlterra Academy',
                style: AltaTextStyle.body2,
                fontWeight: CustomFontWeight.semiBold,
                color: AltaColor.darkBlue,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AltaSpacing.space4),
              const AltaLogo(
                imgPath:
                    'assets/images/homepage_section/png/hiring_partner_image.png',
                width: 375,
                height: 93,
                alignment: Alignment.center,
              ),
              const SizedBox(height: AltaSpacing.space24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  OutputImmersive(
                    title: '100+',
                    subtitle: 'Alumni \nProfessional',
                  ),
                  OutputImmersive(
                    title: '160+',
                    subtitle: 'Hiring \nPartners',
                  ),
                  OutputImmersive(
                    title: '93.94%',
                    subtitle: 'Employment \nRate',
                  ),
                  OutputImmersive(
                    title: '1.86x UMP',
                    subtitle: 'Rata-rata \nGaji Pertama',
                  ),
                ],
              ),
              const SizedBox(height: AltaSpacing.space24),
              AltaText(
                context: context,
                text: 'Immersive Program',
                style: AltaTextStyle.body2,
                fontWeight: CustomFontWeight.bold,
                color: AltaColor.darkBlue,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AltaSpacing.space8),
              const Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  text: 'Tersedia ',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AltaColor.darkBlue,
                  ),
                  children: [
                    TextSpan(
                      text: '3 pilihan kelas bootcamp',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: AltaColor.darkBlue,
                      ),
                    ),
                    TextSpan(
                      text: '\nsesuai keinginan dan kebutuhan kamu.',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AltaColor.darkBlue,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AltaSpacing.space16),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 210,
                child: ValueListenableBuilder(
                  valueListenable: activeIndex,
                  builder: (context, activeIndexValue, _) => CarouselSlider(
                    options: CarouselOptions(
                      height: 210,
                      viewportFraction: 0.6,
                      enableInfiniteScroll: false,
                      initialPage: 1,
                      enlargeCenterPage: true,
                      enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                      scrollPhysics: const BouncingScrollPhysics(),
                      onPageChanged: (index, reason) =>
                          activeIndex.value = index,
                    ),
                    items: const [
                      ImmersiveProgramCard(
                        titleCourse: 'Frontend \nEngineering',
                        subtitleCourse:
                            'Kelas ini akan membimbing kamu untuk menjadi seorang Frontend Engineer. Kamu akan belajar HTML, CSS, Javascript, cara membangun website yang responsif dan menarik, dll.',
                      ),
                      ImmersiveProgramCard(
                        titleCourse: 'Backend \nEngineering',
                        subtitleCourse:
                            'Wujudkan mimpimu menjadi Backend Engineer. Kamu akan dibekali ilmu tentang Backend Engineering menggunakan bahasa GO yang sedang diminati oleh banyak perusahaan di dunia',
                      ),
                      ImmersiveProgramCard(
                        titleCourse: 'Quality Assurance Engineering',
                        subtitleCourse:
                            'Kamu akan dilatih menjadi Quality Assurance Engineer yang dapat menjamin kualitas sebuah perangkat lunak agar dapat berfungsi secara optimal.',
                      ),
                    ].map((e) => e).toList(),
                  ),
                ),
              ),
              const SizedBox(height: AltaSpacing.space8),
              ValueListenableBuilder(
                valueListenable: activeIndex,
                builder: (context, activeIndexValue, _) =>
                    AnimatedSmoothIndicator(
                  activeIndex: activeIndexValue,
                  count: 3,
                  effect: const SlideEffect(
                    dotHeight: 8,
                    dotWidth: 8,
                    spacing: AltaSpacing.space8,
                    activeDotColor: AltaColor.darkBlue,
                    dotColor: AltaColor.gray,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
