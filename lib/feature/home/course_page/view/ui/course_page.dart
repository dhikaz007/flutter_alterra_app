import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constant/alta_color.dart';
import '../../../../../utils/constant/alta_spacing.dart';
import '../../../../../utils/widgets/alta_scaffold.dart';
import '../../../../../utils/widgets/alta_text.dart';

import 'widget/card_schedule_widget.dart';
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
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
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
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 380,
                    enableInfiniteScroll: false,
                    initialPage: 1,
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                  ),
                  items: [
                    const CourseCardLargeWidget(
                      imgAsset:
                          'assets/icon/homepage_section/png/back_end_icon.png',
                      headtitle: 'Frontend \nEngineering',
                      subtitle:
                          'Kelas ini akan membimbing kamu untuk menjadi seorang Frontend Engineer. Kamu akan belajar HTML, CSS, Javascript, cara membangun website yang responsif dan menarik.',
                    ),
                    const CourseCardLargeWidget(
                      imgAsset:
                          'assets/icon/homepage_section/png/back_end_icon.png',
                      headtitle: 'Backend \nEngineering',
                      subtitle:
                          'Wujudkan mimpimu menjadi Backend Engineer. Kamu akan dibekali ilmu tentang Backend Engineering menggunakan bahasa GO yang sedang diminati oleh banyak perusahaan didunia.',
                    ),
                    const CourseCardLargeWidget(
                      imgAsset:
                          'assets/icon/homepage_section/png/back_end_icon.png',
                      headtitle: 'Quality Assurance Engineering',
                      subtitle:
                          'Kamu akan dilatih menjadi Quality Assurance Engineer yang dapat menjamin kualitas sebuah perangkat lunak agar dapat berfungsi secara optimal.',
                    ),
                  ].map((e) => e).toList(),
                ),
              ),
              const SizedBox(height: AltaSpacing.space36),
              AltaText(
                context: context,
                text: 'Schedule',
                style: AltaTextStyle.titleH2,
                color: AltaColor.black,
              ),
              const SizedBox(height: AltaSpacing.space20),
              const CardScheduleWidget(
                titleCourse: 'Backend Engineering',
                numberBatch: 'Batch 17',
                startDate: '12 April 2023',
                timeCourse: '09.00 - 17.00 WIB',
              ),
              const SizedBox(height: AltaSpacing.space16),
              const CardScheduleWidget(
                titleCourse: 'Frontend Engineering',
                numberBatch: 'Batch 14',
                startDate: '12 April 2023',
                timeCourse: '09.00 - 17.00 WIB',
              ),
              const SizedBox(height: AltaSpacing.space16),
              const CardScheduleWidget(
                titleCourse: 'Quality Engineering',
                numberBatch: 'Batch 11',
                startDate: '15 Mei 2023',
                timeCourse: '19.00 - 21.00 WIB',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
