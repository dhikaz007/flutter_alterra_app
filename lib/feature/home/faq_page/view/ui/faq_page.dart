import 'package:flutter/material.dart';

import '../../../../../utils/alta_constant.dart';
import '../../../../../utils/alta_widgets.dart';
import 'widget/faq_tile_widget.dart';

class FaqPage extends StatelessWidget {
  final ScrollController? scrollController;
  const FaqPage({Key? key, this.scrollController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AltaScaffold(
      isLeading: LeadingVisibility.off,
      isAppbar: AppBarVisibility.on,
      appBarColor: AltaColor.darkBlue,
      scaffoldColor: AltaColor.white,
      title: AltaText(
        context: context,
        text: 'FAQ',
        style: AltaTextStyle.title1,
        fontWeight: CustomFontWeight.bold,
        color: AltaColor.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: AltaSpacing.space16,
          right: AltaSpacing.space16,
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                controller: scrollController,
                children: [
                  const SizedBox(height: AltaSpacing.space20),
                  AltaText(
                    context: context,
                    text: 'Pertanyaan Umum',
                    style: AltaTextStyle.title1,
                    fontWeight: CustomFontWeight.bold,
                    color: AltaColor.black,
                  ),
                  const SizedBox(height: AltaSpacing.space12),
                  FaqTileWidget(
                    title: AltaText(
                      context: context,
                      text:
                          'Apakah saya harus mempunyai background IT untuk mengikuti program ini?',
                      style: AltaTextStyle.body1,
                      fontWeight: CustomFontWeight.medium,
                      color: AltaColor.darkBlue,
                    ),
                    content: AltaText(
                      context: context,
                      text:
                          'Tidak, kamu tidak harus berasal dari jurusan IT. Program ini terbuka untuk kamu yang berasal dari jurusan IT, non-IT, atau mau pindah karir!',
                      style: AltaTextStyle.body2,
                      fontWeight: CustomFontWeight.normal,
                      color: AltaColor.darkGray,
                    ),
                  ),
                  FaqTileWidget(
                    title: AltaText(
                      context: context,
                      text:
                          'Apakah ada persyaratan usia untuk mengikuti program ini?',
                      style: AltaTextStyle.body1,
                      fontWeight: CustomFontWeight.medium,
                      color: AltaColor.darkBlue,
                    ),
                    content: AltaText(
                      context: context,
                      text:
                          'Ada. Peserta minimal berusia 18 tahun dan maksimal 28 tahun.',
                      style: AltaTextStyle.body2,
                      fontWeight: CustomFontWeight.normal,
                      color: AltaColor.darkGray,
                    ),
                  ),
                  FaqTileWidget(
                    title: AltaText(
                      context: context,
                      text:
                          'Saya tidak mempunyai dana sebesar biaya program, apakah saya tetap bisa mengikuti program ini?',
                      style: AltaTextStyle.body1,
                      fontWeight: CustomFontWeight.medium,
                      color: AltaColor.darkBlue,
                    ),
                    content: AltaText(
                      context: context,
                      text:
                          'Tentu! Kami ingin semua orang punya akses yang sama untuk bisa mencapai mimpinya. Kamu bisa bayar biaya program setelah dapat kerja. Selain itu, kamu juga bisa menggunakan metode cicilan dengan bunga 0%.',
                      style: AltaTextStyle.body2,
                      fontWeight: CustomFontWeight.normal,
                      color: AltaColor.darkGray,
                    ),
                  ),
                  FaqTileWidget(
                    title: AltaText(
                      context: context,
                      text:
                          'Apakah program ini akan diadakan offline atau online?',
                      style: AltaTextStyle.body1,
                      fontWeight: CustomFontWeight.medium,
                      color: AltaColor.darkBlue,
                    ),
                    content: AltaText(
                      context: context,
                      text: 'content',
                      style: AltaTextStyle.body2,
                      fontWeight: CustomFontWeight.normal,
                      color: AltaColor.darkGray,
                    ),
                  ),
                  FaqTileWidget(
                    title: AltaText(
                      context: context,
                      text:
                          'Apakah saya membutuhkan laptop sendiri atau disediakan oleh pihak Alterra Academy?',
                      style: AltaTextStyle.body1,
                      fontWeight: CustomFontWeight.medium,
                      color: AltaColor.darkBlue,
                    ),
                    content: AltaText(
                      context: context,
                      text: 'content',
                      style: AltaTextStyle.body2,
                      fontWeight: CustomFontWeight.normal,
                      color: AltaColor.darkGray,
                    ),
                  ),
                  FaqTileWidget(
                    title: AltaText(
                      context: context,
                      text:
                          'Apakah ada spesifikasi laptop untuk mengikuti program ini?',
                      style: AltaTextStyle.body1,
                      fontWeight: CustomFontWeight.medium,
                      color: AltaColor.darkBlue,
                    ),
                    content: AltaText(
                      context: context,
                      text: 'content',
                      style: AltaTextStyle.body2,
                      fontWeight: CustomFontWeight.normal,
                      color: AltaColor.darkGray,
                    ),
                  ),
                  FaqTileWidget(
                    title: AltaText(
                      context: context,
                      text: 'Metode cicilan apa saja yang disediakan?',
                      style: AltaTextStyle.body1,
                      fontWeight: CustomFontWeight.medium,
                      color: AltaColor.darkBlue,
                    ),
                    content: AltaText(
                      context: context,
                      text: 'content',
                      style: AltaTextStyle.body2,
                      fontWeight: CustomFontWeight.normal,
                      color: AltaColor.darkGray,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  const SizedBox(height: AltaSpacing.space24),
                  AltaText(
                    context: context,
                    text: 'Pendaftaran',
                    style: AltaTextStyle.title1,
                    fontWeight: CustomFontWeight.bold,
                    color: AltaColor.black,
                  ),
                  const SizedBox(height: AltaSpacing.space12),
                  FaqTileWidget(
                    title: AltaText(
                      context: context,
                      text:
                          'Saya sudah melakukan pendaftaran, proses selanjutnya bagaimana?',
                      style: AltaTextStyle.body1,
                      fontWeight: CustomFontWeight.medium,
                      color: AltaColor.darkBlue,
                    ),
                    content: AltaText(
                      context: context,
                      text: 'content',
                      style: AltaTextStyle.body2,
                      fontWeight: CustomFontWeight.normal,
                      color: AltaColor.darkGray,
                    ),
                  ),
                  FaqTileWidget(
                    title: AltaText(
                      context: context,
                      text:
                          'Sudah 7 hari setelah saya daftar, kenapa belum dikirimkan email?',
                      style: AltaTextStyle.body1,
                      fontWeight: CustomFontWeight.medium,
                      color: AltaColor.darkBlue,
                    ),
                    content: AltaText(
                      context: context,
                      text: 'content',
                      style: AltaTextStyle.body2,
                      fontWeight: CustomFontWeight.normal,
                      color: AltaColor.darkGray,
                    ),
                  ),
                  FaqTileWidget(
                    title: AltaText(
                      context: context,
                      text:
                          'Bagaimana gambaran proses interview pada tahap seleksi?',
                      style: AltaTextStyle.body1,
                      fontWeight: CustomFontWeight.medium,
                      color: AltaColor.darkBlue,
                    ),
                    content: AltaText(
                      context: context,
                      text: 'content',
                      style: AltaTextStyle.body2,
                      fontWeight: CustomFontWeight.normal,
                      color: AltaColor.darkGray,
                    ),
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
