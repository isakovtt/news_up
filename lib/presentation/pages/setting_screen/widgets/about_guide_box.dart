import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/cubits/login/login_cubit.dart';
import 'package:newsup_app/presentation/pages/authorization_screens/login/login_screen.dart';
import 'package:newsup_app/presentation/pages/faq/faq_screen.dart';
import 'package:newsup_app/presentation/widgets/inside_colored_button.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';
import 'package:newsup_app/utils/helpers/navigate.dart';
import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_texts.dart';
import 'guide_box.dart';

class AboutGuideBox extends StatelessWidget {
  const AboutGuideBox({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              60.verticalSpace,
              Image.asset(
                AppAssets.aboutSetting,
              ),
              8.horizontalSpace,
              Text(
                AppTexts.about,
                style: AppTextStyles.greyScale900s14W700,
              )
            ],
          ),
          12.verticalSpace,
          GestureDetector(
            child: const GuideBox(text: AppTexts.getHelp),
            onTap: () {
              Navigate.navigatePush(context, const FaqScreen());
            },
          ),
          8.verticalSpace,
          const GuideBox(text: AppTexts.termofService),
          8.verticalSpace,
          const GuideBox(text: AppTexts.privacyPolicy),
          18.verticalSpace,
          BlocListener<LoginCubit, LoginState>(
            listener: (context, state) {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
                (route) => false,
              );
            },
            child: InsideColoredButton(
              onTap: () async {
                cubit.clearBoxAndLogOut();
                await Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                  (route) => false,
                );
              },
              color: AppColors.primary_300,
              height: 46,
              width: 80,
              text: 'Log out',
            ),
          )
        ],
      ),
    );
  }
}
