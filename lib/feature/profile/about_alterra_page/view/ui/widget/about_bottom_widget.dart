import 'package:flutter/material.dart';

import '../../../../../../utils/alta_constant.dart';
import '../../../../../../utils/alta_widgets.dart';

class AboutBottomWidget extends StatelessWidget {
  const AboutBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 352,
      decoration: const BoxDecoration(color: AltaColor.darkBlue),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AltaSpacing.space16),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: AltaSpacing.space16),
              Row(
                children: [
                  const SizedBox(
                    width: 64,
                    child: AltaLogo(
                      imgPath:
                          'assets/images/login_section/png/alterra_white_logo.png',
                      width: 64,
                      height: 40,
                      alignment: Alignment.center,
                    ),
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
                  const AltaSvg(
                    svgPath: 'assets/icon/homepage_section/svg/globe_icon.svg',
                    width: 24,
                    height: 24,
                  ),
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
                  const AltaSvg(
                    svgPath: 'assets/icon/homepage_section/svg/inbox_icon.svg',
                    width: 24,
                    height: 24,
                  ),
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
                  const AltaSvg(
                    svgPath:
                        'assets/icon/homepage_section/svg/locationtick.svg',
                    width: 24,
                    height: 24,
                  ),
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
