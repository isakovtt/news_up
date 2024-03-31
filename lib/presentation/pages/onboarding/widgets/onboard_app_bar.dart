import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_texts.dart';
import '../../../../utils/helpers/navigate.dart';
import '../../../widgets/global_page_indicator.dart';
import '../../authorization_screens/login/login_screen.dart';

class OnboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const OnboardAppBar({super.key, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 24, right: 24),
      child: SizedBox(
        height: kToolbarHeight,
        child: Row(
          children: [
            GlobalPageIndicator(controller: controller),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigate.navigatePush(context, const LoginScreen());
              },
              child: Text(
                AppTexts.skip,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: AppColors.secondary_200,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
