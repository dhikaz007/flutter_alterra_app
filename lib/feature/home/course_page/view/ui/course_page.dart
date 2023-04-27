import 'package:flutter/material.dart';

import '../../../../../utils/constant/alta_color.dart';
import '../../../../../utils/constant/alta_spacing.dart';
import '../../../../../utils/widgets/alta_scaffold.dart';
import '../../../../../utils/widgets/alta_text.dart';

import 'widget/course_card_large_widget.dart';
import 'widget/course_card_small_widget.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AltaScaffold(
      leadingAsset: null,
      title: AltaText(
        context: context,
        text: 'Course',
        style: AltaTextStyle.headlineH2,
        color: AltaColor.white,
      ),
      appBarColor: AltaColor.darkBlue,
      body: Padding(
        padding: const EdgeInsets.only(
          left: AltaSpacing.space16,
          right: AltaSpacing.space16,
          top: AltaSpacing.space8,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AltaText(
              context: context,
              text: 'Flexi Program',
              style: AltaTextStyle.titleH2,
              color: AltaColor.black,
            ),
            const SizedBox(height: AltaSpacing.space16),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: const [
                  CourseCardSmallWidget(
                    headtitle: 'Bayar sekali \ndi depan',
                    title: 'Belajar langsung tanpa khawatir',
                    subtitle: 'Cukup bayar sekali di depan',
                    priceTitle: 'Rp. 9.000.000',
                  ),
                  CourseCardSmallWidget(
                    headtitle: 'Cicilan \nSetelah Kerja',
                    title: 'Hingga 12 bulan!',
                    subtitle: 'Cicilan per bulannya',
                    priceTitle: 'Rp. 900.000',
                  ),
                ],
              ),
            ),
            const SizedBox(height: AltaSpacing.space16),
            AltaText(
              context: context,
              text: 'Immersive Program',
              style: AltaTextStyle.titleH2,
              color: AltaColor.black,
            ),
            const SizedBox(height: AltaSpacing.space20),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 380,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: const [
                  CourseCardLargeWidget(
                    imgAsset: 'assets/icon/homepage_section/png/backend_icon.png',
                    headtitle: 'Backend \nEngineering',
                    subtitle:
                        'Kelas ini akan membimbing kamu untuk menjadi seorang Frontend Engineer. Kamu akan belajar HTML, CSS, Javascript, cara membangun website yang responsif dan menarik.',
                  ),
                  CourseCardLargeWidget(
                    imgAsset: 'assets/icon/homepage_section/png/backend_icon.png',
                    headtitle: 'Backend \nEngineering',
                    subtitle:
                        'Wujudkan mimpimu menjadi Backend Engineer. Kamu akan dibekali ilmu tentang Backend Engineering menggunakan bahasa GO yang sedang diminati oleh banyak perusahaan didunia.',
                  ),
                  CourseCardLargeWidget(
                    imgAsset: 'assets/icon/homepage_section/png/backend_icon.png',
                    headtitle: 'Backend \nEngineering',
                    subtitle:
                        'Kamu akan dilatih menjadi Quality Assurance Engineer yang dapat menjamin kualitas sebuah perangkat lunak agar dapat berfungsi secara optimal.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
