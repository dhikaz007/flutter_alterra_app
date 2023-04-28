import 'package:flutter/material.dart';

import '../../../../../utils/alta_constants.dart';
import '../../../../../utils/alta_widgets.dart';

class RegisterPage3 extends StatelessWidget {
  const RegisterPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AltaColor.white,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            color: AltaColor.black,
            icon: const Icon(Icons.close),
            iconSize: 14,
            onPressed: () => Navigator.of(context).pop(true),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            left: AltaSpacing.space16,
            right: AltaSpacing.space16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: AltaSpacing.space28),
              AltaText(
                context: context,
                text: 'Langkah 3/3',
                style: AltaTextStyle.titleH2,
                color: AltaColor.black.withOpacity(0.5),
              ),
              const SizedBox(height: AltaSpacing.space28),
              AltaText(
                context: context,
                text:
                    'Klik tautan verifikasi yang\ntelah kami kirim ke\nnadewa@alterra.com',
                style: AltaTextStyle.headlineH1,
                color: AltaColor.black,
              ),
              const SizedBox(height: AltaSpacing.space18),
              Row(
                children: [
                  AltaText(
                      context: context,
                      text: 'Email yang dimasukkan salah?',
                      style: AltaTextStyle.titleH3,
                      color: Colors.black),
                  const SizedBox(width: AltaSpacing.space5),
                  AltaText(
                      context: context,
                      text: 'Ubah Email',
                      style: AltaTextStyle.titleH2,
                      color: AltaColor.tangerine),
                ],
              ),
              const SizedBox(height: AltaSpacing.space18),
              AltaText(
                  context: context,
                  text:
                      'Belum menerima tautan verifikasi?\nKirim ulang dalam 00:24',
                  style: AltaTextStyle.titleH3,
                  color: Colors.black),
              const SizedBox(height: AltaSpacing.space28),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AltaColor.darkBlue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 18, bottom: 18),
                        child: AltaText(
                          context: context,
                          text: 'KIRIM ULANG TAUTAN',
                          style: AltaTextStyle.titleH1,
                          color: AltaColor.white,
                        ),
                      ),
                    ),
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
