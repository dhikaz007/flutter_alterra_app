import 'package:flutter/material.dart';

import '../../../../utils/alta_constants.dart';
import '../../../../utils/alta_widgets.dart';
import '../../../../utils/widgets/alta_program_courses.dart';

class HomePage extends StatelessWidget {
  final ScrollController? scrollController;
  const HomePage({super.key, this.scrollController});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const AltaHomePageBackground(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.only(
              left: AltaSpacing.space20,
              right: AltaSpacing.space20,
              top: AltaSpacing.space44,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/png/profile_avatar.png'),
                    ),
                    const SizedBox(width: AltaSpacing.space12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AltaText(
                          context: context,
                          text: 'Nahdy Dailamy Batewa',
                          style: AltaTextStyle.titleH2,
                          color: AltaColor.white,
                        ),
                        AltaText(
                          context: context,
                          text: 'nadewa@alterra.com',
                          style: AltaTextStyle.bodyH2,
                          color: AltaColor.white,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: AltaSpacing.space23),
                const AltaSearchWidget(
                  filled: true,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                ),
                const SizedBox(height: AltaSpacing.space18),
                Center(
                  child: SizedBox(
                    height: 163,
                    width: MediaQuery.of(context).size.width,
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        'assets/images/png/flash_sale.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: AltaSpacing.space18),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AltaText(
                            context: context,
                            text: 'Courses',
                            style: AltaTextStyle.titleH2,
                            color: AltaColor.black),
                        const SizedBox(height: AltaSpacing.space16),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 198,
                          child: ListView(
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            children: const [
                              AltaFeatureCourses(
                                assetsCourse: 'assets/images/png/ui_ux.png',
                                textCourse: 'Program Flexi UI/UX',
                                textDetail: 'Selengkapnya',
                              ),
                              SizedBox(width: AltaSpacing.space12),
                              AltaFeatureCourses(
                                assetsCourse: 'assets/images/png/flutter.png',
                                textCourse: 'Program Flexi Flutter',
                                textDetail: 'Selengkapnya',
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: AltaSpacing.space18),
                        AltaText(
                            context: context,
                            text: 'Program Alterra Academy',
                            style: AltaTextStyle.titleH2,
                            color: AltaColor.black),
                        const SizedBox(height: AltaSpacing.space18),
                        Column(
                          children: const [
                            AltaProgramCourses(
                              svgPicture: 'assets/images/png/immersive.png',
                              text: 'Immersive Program',
                              sub:
                                  'Raih karir impianmu sebagai Software Engineer tanpa merasa khawatir soal biaya. Bayar biaya program setelah dapat kerja!',
                            ),
                            SizedBox(height: AltaSpacing.space16),
                            AltaProgramCourses(
                              svgPicture: 'assets/images/png/flexi_program.png',
                              text: 'Flexi Program',
                              sub:
                                  'Bootcamp dengan waktu belajar yang flexible, solusi untuk kamu yang masih bekerja dan mempunyai kegiatan rutin tetapi ingin pindah karir di Bidang Digital.',
                            ),
                            SizedBox(height: AltaSpacing.space16),
                            AltaProgramCourses(
                              svgPicture: 'assets/images/png/alta_id.png',
                              text: 'ALTA.id | Online\nLearning Platform',
                              sub:
                                  'Alta.id merupakan platform pembelajaran untuk kalian yang ingin menjadi engineer berkualitas. Setiap kelas dapat diakses kapan saja dengan format belajar hybrid.',
                            ),
                            SizedBox(height: AltaSpacing.space16),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
