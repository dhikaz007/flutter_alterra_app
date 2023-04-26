import 'package:flutter/material.dart';


import 'widget/faq_tile_widget.dart';

import '../../../../../utils/constant/alta_border_radius.dart';
import '../../../../../utils/widgets/alta_text.dart';
import '../../../../../utils/constant/alta_color.dart';
import '../../../../../utils/constant/alta_spacing.dart';
import '../../../../../utils/widgets/alta_scaffold.dart';

class FaqPage extends StatelessWidget {
  const FaqPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AltaScaffold(
      title: AltaText(
        context: context,
        text: 'FAQ',
        style: AltaTextStyle.headlineH2,
        color: AltaColor.white,
      ),
      appBarColor: AltaColor.darkBlue,
      body: Padding(
        padding: const EdgeInsets.only(
          left: AltaSpacing.space16,
          right: AltaSpacing.space16,
        ),
        child: ListView(
          children: [
            FaqTileWidget(
              title: AltaText(
                context: context,
                text:
                    'Apakah saya harus mempunyai background IT untuk mengikuti program ini?',
                style: AltaTextStyle.bodyH1,
                color: AltaColor.darkBlue,
              ),
              content: AltaText(
                context: context,
                text:
                    'Tidak, kamu tidak harus berasal dari jurusan IT. Program ini terbuka untuk kamu yang berasal dari jurusan IT, non-IT, atau mau pindah karir!',
                style: AltaTextStyle.bodyH2,
                color: AltaColor.darkGray,
              ),
            ),
            FaqTileWidget(
              title: AltaText(
                context: context,
                text:
                    'Apakah ada persyaratan usia untuk mengikuti program ini?',
                style: AltaTextStyle.bodyH1,
                color: AltaColor.darkBlue,
              ),
              content: AltaText(
                context: context,
                text:
                    'Ada. Peserta minimal berusia 18 tahun dan maksimal 28 tahun.',
                style: AltaTextStyle.bodyH2,
                color: AltaColor.darkGray,
              ),
            ),
            FaqTileWidget(
              title: AltaText(
                context: context,
                text:
                    'Saya tidak mempunyai dana sebesar biaya program, apakah saya tetap bisa mengikuti program ini?',
                style: AltaTextStyle.bodyH1,
                color: AltaColor.darkBlue,
              ),
              content: AltaText(
                context: context,
                text:
                    'Tentu! Kami ingin semua orang punya akses yang sama untuk bisa mencapai mimpinya. Kamu bisa bayar biaya program setelah dapat kerja. Selain itu, kamu juga bisa menggunakan metode cicilan dengan bunga 0%.',
                style: AltaTextStyle.bodyH2,
                color: AltaColor.darkGray,
              ),
            ),
            FaqTileWidget(
              title: AltaText(
                context: context,
                text: 'Apakah program ini akan diadakan offline atau online?',
                style: AltaTextStyle.bodyH1,
                color: AltaColor.darkBlue,
              ),
              content: AltaText(
                context: context,
                text: 'content',
                style: AltaTextStyle.bodyH2,
                color: AltaColor.darkGray,
              ),
            ),
            FaqTileWidget(
              title: AltaText(
                context: context,
                text:
                    'Apakah saya membutuhkan laptop sendiri atau disediakan oleh pihak Alterra Academy?',
                style: AltaTextStyle.bodyH1,
                color: AltaColor.darkBlue,
              ),
              content: AltaText(
                context: context,
                text: 'content',
                style: AltaTextStyle.bodyH2,
                color: AltaColor.darkGray,
              ),
            ),
            FaqTileWidget(
              title: AltaText(
                context: context,
                text:
                    'Apakah ada spesifikasi laptop untuk mengikuti program ini?',
                style: AltaTextStyle.bodyH1,
                color: AltaColor.darkBlue,
              ),
              content: AltaText(
                context: context,
                text: 'content',
                style: AltaTextStyle.bodyH2,
                color: AltaColor.darkGray,
              ),
            ),
            FaqTileWidget(
              title: AltaText(
                context: context,
                text: 'Metode cicilan apa saja yang disediakan?',
                style: AltaTextStyle.bodyH1,
                color: AltaColor.darkBlue,
              ),
              content: AltaText(
                context: context,
                text: 'content',
                style: AltaTextStyle.bodyH2,
                color: AltaColor.darkGray,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: AltaSpacing.space8),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: AltaSpacing.space24),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(AltaSpacing.space16),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(AltaBorderRadius.radius8),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Ada pertanyaan?',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(AltaBorderRadius.radius8),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0.97, 0.99),
              child: FloatingActionButton.small(
                elevation: 0,
                onPressed: () => debugPrint('TAPPED'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7)),
                backgroundColor: Colors.orange,
                child: const Icon(Icons.arrow_forward),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
