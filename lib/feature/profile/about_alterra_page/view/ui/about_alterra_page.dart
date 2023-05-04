import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../utils/alta_constants.dart';
import '../../../../../utils/alta_widgets.dart';
import '../../../about_alterra_page/view/ui/widget/about_widgets.dart';

class AboutAlterraPage extends StatelessWidget {
  const AboutAlterraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  left: 20, bottom: 11, top: 30, right: 20),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: SvgPicture.asset(
                          'assets/icon/homepage_section/svg/arrow_left_blue.svg')),
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
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: AltaSpacing.space28),
                        Center(
                          child: Image.asset(
                            'assets/images/login_section/png/alterra_blue_logo.png',
                            width: 280,
                            height: 169,
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
                              AltaColor.tangerine),
                          borderRadius: 8,
                          paddingVertical: 10,
                          paddingHorizontal: 10,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const SizedBox(
                              width: 131,
                              child: ContributeWidget(
                                title: '20K+',
                                sub: 'Pendaftar Program',
                              ),
                            ),
                            Image.asset(
                                'assets/icon/homepage_section/png/line.png'),
                            const SizedBox(
                              width: 131,
                              child: ContributeWidget(
                                title: '250+',
                                sub: 'Pendaftar Program',
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: AltaSpacing.space20),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 16, right: 11),
                              child: SizedBox(
                                width: 104,
                                child: ContributeWidget(
                                  title: '88.24%',
                                  sub:
                                      'Lulusan Mendapat Pekerjaan dalam waktu 3 Bulan',
                                ),
                              ),
                            ),
                            Image.asset(
                                'assets/icon/homepage_section/png/line.png'),
                            const SizedBox(
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
          )
        ],
      ),
    );
  }
}
