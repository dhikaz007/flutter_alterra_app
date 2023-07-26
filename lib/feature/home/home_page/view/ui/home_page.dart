import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../utils/alta_constant.dart';
import '../../../../../utils/alta_widgets.dart';
import '../../../course_list_page/view/ui/flutter_course_list_page.dart';
import '../../../course_list_page/view/ui/ui_ux_course_list_page.dart';
import '../../../course_promo_page/view/ui/course_promo_page.dart';
import '../../view_model/cubit/homepage_cubit.dart';
import 'widget/homepage_widgets.dart';

class HomePage extends StatelessWidget {
  final ScrollController? scrollController;
  const HomePage({super.key, this.scrollController});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Stack(
        children: [
          const AltaHomePageBackground(),
          AltaScaffold(
            isLeading: LeadingVisibility.off,
            isAppbar: AppBarVisibility.off,
            scaffoldColor: Colors.transparent,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: AltaSpacing.space20,
                    right: AltaSpacing.space20,
                    top: AltaSpacing.space44,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundImage: AssetImage(
                              'assets/images/login_section/png/profile_avatar.png',
                            ),
                          ),
                          const SizedBox(width: AltaSpacing.space12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AltaText(
                                context: context,
                                text: context
                                        .read<HomepageCubit>()
                                        .getUserName() ??
                                    '',
                                style: AltaTextStyle.title3,
                                color: AltaColor.white,
                                fontWeight: CustomFontWeight.bold,
                              ),
                              AltaText(
                                context: context,
                                text: context
                                        .read<HomepageCubit>()
                                        .getEmailUser() ??
                                    '',
                                style: AltaTextStyle.body2,
                                color: AltaColor.white,
                                fontWeight: CustomFontWeight.normal,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: AltaSpacing.space24),
                      const AltaSearchWidget(
                        filled: true,
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search',
                      ),
                      const SizedBox(height: AltaSpacing.space20),
                      Center(
                        child: SizedBox(
                          height: 163,
                          width: MediaQuery.of(context).size.width,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => const CoursePromoPage()));
                            },
                            child: const AltaLogo(
                              imgPath:
                                  'assets/images/homepage_section/png/flash_sale.png',
                              fit: BoxFit.fill,
                              width: 344,
                              height: 164,
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    controller: scrollController,
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: AltaSpacing.space20),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: AltaSpacing.space20),
                          child: AltaText(
                            context: context,
                            text: 'Courses',
                            style: AltaTextStyle.title3,
                            color: AltaColor.black,
                            fontWeight: CustomFontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: AltaSpacing.space20),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 198,
                          child: ListView(
                            padding: const EdgeInsets.only(
                              left: AltaSpacing.space20,
                            ),
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            children: [
                              AltaFeatureCourses(
                                assetsCourse:
                                    'assets/images/homepage_section/png/ui_ux.png',
                                textCourse: 'Program Flexi UI/UX',
                                textDetail: 'Selengkapnya',
                                onTap: () => Navigator.of(context)
                                    .push(MaterialPageRoute(
                                  builder: (_) => const UiUxCourseListPage(),
                                )),
                              ),
                              const SizedBox(width: AltaSpacing.space12),
                              AltaFeatureCourses(
                                assetsCourse:
                                    'assets/images/homepage_section/png/flutter.png',
                                textCourse: 'Program Flexi Flutter',
                                textDetail: 'Selengkapnya',
                                onTap: () => Navigator.of(context)
                                    .push(MaterialPageRoute(
                                  builder: (_) => const FlutterCourseListPage(),
                                )),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: AltaSpacing.space20),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: AltaSpacing.space20,
                            right: AltaSpacing.space20,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AltaText(
                                context: context,
                                text: 'Program Alterra Academy',
                                style: AltaTextStyle.title3,
                                color: AltaColor.black,
                                fontWeight: CustomFontWeight.bold,
                              ),
                              const SizedBox(height: AltaSpacing.space20),
                              GestureDetector(
                                onTap: () {
                                  launchUrl(Uri.parse(
                                      'https://academy.alterra.id/immersive-program/'));
                                },
                                child: const AltaProgramCourses(
                                  svgPicture:
                                      'assets/icon/homepage_section/png/immersive.png',
                                  text: 'Immersive Program',
                                  sub:
                                      'Raih karir impianmu sebagai Software Engineer tanpa merasa khawatir soal biaya. Bayar biaya program setelah dapat kerja!',
                                ),
                              ),
                              const SizedBox(height: AltaSpacing.space16),
                              GestureDetector(
                                onTap: () {
                                  launchUrl(Uri.parse(
                                      'https://academy.alterra.id/flexi-program/'));
                                },
                                child: const AltaProgramCourses(
                                  svgPicture:
                                      'assets/icon/homepage_section/png/flexi_program.png',
                                  text: 'Flexi Program',
                                  sub:
                                      'Bootcamp dengan waktu belajar yang flexible, solusi untuk kamu yang masih bekerja dan mempunyai kegiatan rutin tetapi ingin pindah karir di Bidang Digital.',
                                ),
                              ),
                              const SizedBox(height: AltaSpacing.space16),
                              GestureDetector(
                                onTap: () {
                                  launchUrl(Uri.parse('https://alta.id/'));
                                },
                                child: const AltaProgramCourses(
                                  svgPicture:
                                      'assets/icon/homepage_section/png/alta_id.png',
                                  text: 'ALTA.id | Online\nLearning Platform',
                                  sub:
                                      'Alta.id merupakan platform pembelajaran untuk kalian yang ingin menjadi engineer berkualitas. Setiap kelas dapat diakses kapan saja dengan format belajar hybrid.',
                                ),
                              ),
                              const SizedBox(height: AltaSpacing.space16),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(AltaSpacing.space8),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    child: const AltaLogo(
                      imgPath: 'assets/icon/homepage_section/png/wa.png',
                      width: 52,
                      height: 52,
                      alignment: Alignment.center,
                    ),
                    onPressed: () {
                      launchUrl(Uri.parse(
                          // "https://api.whatsapp.com/send/?phone=6281280022533&text=Hi+Alterra+Academy%2C+Saya+ingin+bertanya+tentang+Flexi+Program&type=phone_number&app_absent=0"
                          "https://web.whatsapp.com/send/?phone=6281280022533&text=Hi+Alterra+Academy%2C+Saya+ingin+bertanya+tentang+Flexi+Program&type=phone_number&app_absent=0"));
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
