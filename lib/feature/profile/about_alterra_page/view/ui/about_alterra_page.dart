import 'package:flutter/material.dart';

import '../../../../../utils/alta_constant.dart';
import '../../../../../utils/alta_widgets.dart';
import '../../../about_alterra_page/view/ui/widget/about_widgets.dart';

class AboutAlterraPage extends StatelessWidget {
  const AboutAlterraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AltaScaffold(
      isLeading: LeadingVisibility.off,
      isAppbar: AppBarVisibility.off,
      scaffoldColor: AltaColor.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 68,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AltaColor.white,
              boxShadow: [
                BoxShadow(
                  color: AltaColor.gray.withOpacity(0.08),
                  spreadRadius: 4,
                  // blurRadius: 7,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: AltaSpacing.space20,
                bottom: AltaSpacing.space12,
                top: AltaSpacing.space28,
                right: AltaSpacing.space20,
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop(true);
                    },
                    child: const AltaSvg(
                      svgPath:
                          'assets/icon/homepage_section/svg/arrow_left_blue.svg',
                      width: 24,
                      height: 24,
                    ),
                  ),
                  const SizedBox(width: AltaSpacing.space16),
                  AltaText(
                    context: context,
                    text: 'Tentang Alterra',
                    style: AltaTextStyle.title1,
                    color: AltaColor.darkBlue,
                    fontWeight: CustomFontWeight.bold,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: AltaSpacing.space20,
                      right: AltaSpacing.space20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: AltaSpacing.space28),
                        const Center(
                          child: AltaLogo(
                            imgPath:
                                'assets/images/login_section/png/alterra_blue_logo.png',
                            width: 280,
                            height: 169,
                            alignment: Alignment.center,
                          ),
                        ),
                        const SizedBox(height: AltaSpacing.space28),
                        AltaText(
                          context: context,
                          text: 'About Us.',
                          style: AltaTextStyle.title1,
                          color: AltaColor.black,
                          fontWeight: CustomFontWeight.medium,
                        ),
                        const SizedBox(height: AltaSpacing.space4),
                        SizedBox(
                          width: 292,
                          child: AltaText(
                            context: context,
                            text:
                                'Alterra Academy adalah wadah transformasi digital\nuntuk semua orang Indonesia untuk menjadi Talenta\nDigital dengan kualitas terbaik di Industri saat ini.',
                            style: AltaTextStyle.body2,
                            color: AltaColor.black.withOpacity(0.8),
                            fontWeight: CustomFontWeight.light,
                          ),
                        ),
                        const SizedBox(height: AltaSpacing.space16),
                        AltaPrimaryButton(
                          backgroundColor: const MaterialStatePropertyAll(
                            AltaColor.tangerine,
                          ),
                          borderRadius: AltaBorderRadius.radius8,
                          paddingVertical: AltaSpacing.space12,
                          paddingHorizontal: AltaSpacing.space12,
                          onPressed: () {},
                          child: AltaText(
                            context: context,
                            text: 'Learn More',
                            style: AltaTextStyle.body1,
                            color: AltaColor.white,
                            fontWeight: CustomFontWeight.medium,
                          ),
                        ),
                        const SizedBox(height: AltaSpacing.space24),
                        SizedBox(
                          width: 290,
                          child: AltaText(
                            context: context,
                            text:
                                'Kontribusi Kami dalam Bidang Teknologi di Indonesia',
                            style: AltaTextStyle.title1,
                            color: AltaColor.black,
                            fontWeight: CustomFontWeight.medium,
                          ),
                        ),
                        const SizedBox(height: AltaSpacing.space28),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:  [
                            SizedBox(
                              width: 131,
                              child: ContributeWidget(
                                title: '20K+',
                                sub: 'Pendaftar Program',
                              ),
                            ),
                            AltaLogo(
                              imgPath:
                                  'assets/icon/homepage_section/png/line.png',
                              width: 1,
                              height: 105,
                              alignment: Alignment.center,
                            ),
                            SizedBox(
                              width: 131,
                              child: ContributeWidget(
                                title: '250+',
                                sub: 'Pendaftar Program',
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: AltaSpacing.space20),
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:  [
                            Padding(
                              padding: EdgeInsets.only(
                                left: AltaSpacing.space16,
                                right: AltaSpacing.space12,
                              ),
                              child: SizedBox(
                                width: 104,
                                child: ContributeWidget(
                                  title: '88.24%',
                                  sub:
                                      'Lulusan Mendapat Pekerjaan dalam waktu 3 Bulan',
                                ),
                              ),
                            ),
                            AltaLogo(
                              imgPath:
                                  'assets/icon/homepage_section/png/line.png',
                              width: 1,
                              height: 105,
                              alignment: Alignment.center,
                            ),
                            SizedBox(
                              width: 131,
                              child: ContributeWidget(
                                title: '1.82x UMP',
                                sub: 'Rata-rata Gaji Pertama',
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: AltaSpacing.space20),
                        AltaText(
                          context: context,
                          text: 'Mengapa Belajar\ndi Alterra Academy?',
                          style: AltaTextStyle.title1,
                          color: AltaColor.black,
                          fontWeight: CustomFontWeight.medium,
                        ),
                        const SizedBox(height: AltaSpacing.space12),
                        const DetailText(),
                      ],
                    ),
                  ),
                  const AboutBottomWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
