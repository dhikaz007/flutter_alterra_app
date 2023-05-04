import 'package:flutter/material.dart';
import 'package:flutter_alterra_app/utils/widgets/alta_text.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../utils/alta_constants.dart';

class AboutBottomWidget extends StatelessWidget {
  const AboutBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 317,
      decoration: const BoxDecoration(color: AltaColor.darkBlue),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: AltaSpacing.space16),
              Row(
                children: [
                  SizedBox(
                    width: 64,
                    child: Image.asset(
                        'assets/images/login_section/png/alterra_white_logo.png'),
                  ),
                  const SizedBox(width: AltaSpacing.space8),
                  AltaText(
                    context: context,
                    text: 'PT SEPULSA TEKNOLOGI\nINDONESIA',
                    style: AltaTextStyle.title3,
                    color: AltaColor.white,
                    fontWeight: CustomFontWeight.semiBold,
                  ),
                ],
              ),
              const SizedBox(height: AltaSpacing.space12),
              AltaText(
                context: context,
                text: 'Status Perizinan:',
                style: AltaTextStyle.body1,
                color: AltaColor.white,
                fontWeight: CustomFontWeight.medium,
              ),
              const SizedBox(height: AltaSpacing.space4),
              AltaText(
                context: context,
                text: 'Terdaftar di Kominfo',
                style: AltaTextStyle.body2,
                color: AltaColor.white,
                fontWeight: CustomFontWeight.normal,
              ),
              const SizedBox(height: AltaSpacing.space12),
              AltaText(
                context: context,
                text: 'Nomor dan tanggal Surat Penetapan Izin:',
                style: AltaTextStyle.body1,
                color: AltaColor.white,
                fontWeight: CustomFontWeight.medium,
              ),
              const SizedBox(height: AltaSpacing.space4),
              AltaText(
                context: context,
                text: 'No 00657.01/DJAI.PSE/05/2021 pada tanggal 11 Mei 2021',
                style: AltaTextStyle.body2,
                color: AltaColor.white,
                fontWeight: CustomFontWeight.normal,
              ),
              const SizedBox(height: AltaSpacing.space12),
              AltaText(
                context: context,
                text: 'Jenis Usaha(Cluster):',
                style: AltaTextStyle.body1,
                color: AltaColor.white,
                fontWeight: CustomFontWeight.medium,
              ),
              const SizedBox(height: AltaSpacing.space4),
              AltaText(
                context: context,
                text: 'Payment System',
                style: AltaTextStyle.body2,
                color: AltaColor.white,
                fontWeight: CustomFontWeight.normal,
              ),
              const SizedBox(height: AltaSpacing.space16),
              Row(
                children: [
                  SvgPicture.asset(
                      'assets/icon/homepage_section/svg/globe_icon.svg'),
                  const SizedBox(width: AltaSpacing.space12),
                  AltaText(
                    context: context,
                    text: 'https://www.alterra.id/',
                    style: AltaTextStyle.body2,
                    color: AltaColor.white,
                    fontWeight: CustomFontWeight.medium,
                  ),
                ],
              ),
              const SizedBox(height: AltaSpacing.space12),
              Row(
                children: [
                  SvgPicture.asset(
                      'assets/icon/homepage_section/svg/inbox_icon.svg'),
                  const SizedBox(width: AltaSpacing.space12),
                  AltaText(
                    context: context,
                    text: 'ananto@alterra.id',
                    style: AltaTextStyle.body2,
                    color: AltaColor.white,
                    fontWeight: CustomFontWeight.medium,
                  ),
                ],
              ),
              const SizedBox(height: AltaSpacing.space12),
              Row(
                children: [
                  SvgPicture.asset(
                      'assets/icon/homepage_section/svg/locationtick.svg'),
                  const SizedBox(width: AltaSpacing.space12),
                  AltaText(
                    context: context,
                    text:
                        'Jl. Setia Budi Tengah No.37, RT.2/RW.3, Kuningan,\nSetia Budi, Kecamatan Setiabudi, Kota Jakarta Selatan,\nDaerah Khusus Ibukota Jakarta 12910',
                    style: AltaTextStyle.body2,
                    color: AltaColor.white,
                    fontWeight: CustomFontWeight.medium,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
