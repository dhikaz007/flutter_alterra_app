import 'package:flutter/material.dart';
import 'package:flutter_alterra_app/utils/alta_widgets.dart';

import '../../../../../../utils/alta_constants.dart';

class DetailText extends StatelessWidget {
  const DetailText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AltaText(
            context: context,
            text: 'Relevansi Kurikulum',
            style: AltaTextStyle.bodyH1,
            color: AltaColor.darkBlue),
        const SizedBox(height: AltaSpacing.space10),
        AltaText(
            context: context,
            text:
                'Kami merancang dan menyediakan kurikulum berstandar tinggi yang telah disesuaikan dengan tren dan kebutuhan industri teknologi saat ini.',
            style: AltaTextStyle.bodyH2,
            color: AltaColor.darkBlue.withOpacity(0.8)),
        const SizedBox(height: AltaSpacing.space10),
        AltaText(
            context: context,
            text: 'Siap Masuk Dunia Kerja',
            style: AltaTextStyle.bodyH1,
            color: AltaColor.darkBlue),
        const SizedBox(height: AltaSpacing.space10),
        AltaText(
            context: context,
            text:
                'Tidak hanya belajar keahlian teknis, kami juga melatih kamu agar siap menghadapi dunia kerja. Mulai dari cara membangun resume & online presence, soft skills, cara menghadapi interview, hingga coding test.',
            style: AltaTextStyle.bodyH2,
            color: AltaColor.darkBlue.withOpacity(0.8)),
        const SizedBox(height: AltaSpacing.space10),
        AltaText(
            context: context,
            text: 'Konsultasi & Dukungan Karir',
            style: AltaTextStyle.bodyH1,
            color: AltaColor.darkBlue),
        const SizedBox(height: AltaSpacing.space10),
        AltaText(
            context: context,
            text:
                'Pasca lulus program, kami juga memberikan dukungan kepada alumni dalam bentuk konsultasi atau diskusi terkait karir dan wawasan lainnya.',
            style: AltaTextStyle.bodyH2,
            color: AltaColor.darkBlue.withOpacity(0.8)),
        const SizedBox(height: AltaSpacing.space10),
        AltaText(
            context: context,
            text: 'Pilihan Program',
            style: AltaTextStyle.bodyH1,
            color: AltaColor.darkBlue),
        const SizedBox(height: AltaSpacing.space10),
        AltaText(
            context: context,
            text:
                'Alterra Academy menyediakan 2 pilihan program yang siap mendukung semua kalangan yang ingin masuk kedalam dunia IT.',
            style: AltaTextStyle.bodyH2,
            color: AltaColor.darkBlue.withOpacity(0.8)),
        const SizedBox(height: AltaSpacing.space10),
      ],
    );
  }
}
