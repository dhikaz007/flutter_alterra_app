import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../auth/login/view/ui/splash_page.dart';
import '../../../../../utils/alta_constant.dart';
import '../../../../../utils/alta_widgets.dart';
import '../../view_model/cubit/homepage_cubit.dart';

class HomePage extends StatelessWidget {
  final ScrollController scrollController;
  const HomePage({Key? key, required this.scrollController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomepageCubit, HomepageState>(
      listener: (context, state) {
        if (state is UserHomePageLogOut) {
          AltaSnackBar.getAltaSnackBar(
              context, 'Berhasil keluar', AltaColor.tangerine);
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => const SplashPage()),
              (route) => false);
        }
      },
      builder: (context, state) {
        return Stack(
          children: [
            const AltaHomePageBackground(),
            AltaScaffold(
              isAppbar: AppBarVisibility.off,
              scaffoldColor: Colors.transparent,
              body: Padding(
                padding: const EdgeInsets.only(
                  left: AltaSpacing.space20,
                  right: AltaSpacing.space20,
                  top: AltaSpacing.space44,
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            child: Icon(Icons.add),
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
                                fontWeight: CustomFontWeight.bold,
                                color: AltaColor.white,
                              ),
                              AltaText(
                                context: context,
                                text: context
                                        .read<HomepageCubit>()
                                        .getEmailUser() ??
                                    '',
                                style: AltaTextStyle.body2,
                                fontWeight: CustomFontWeight.normal,
                                color: AltaColor.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: AltaSpacing.space16),
                      AltaPrimaryButton(
                        borderRadius: 8,
                        paddingVertical: 16,
                        paddingHorizontal: 20,
                        onPressed: () async =>
                            await context.read<HomepageCubit>().userLogout(),
                        child: AltaText(
                          context: context,
                          text: 'Sign Out',
                          style: AltaTextStyle.body1,
                          fontWeight: CustomFontWeight.medium,
                          color: AltaColor.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
