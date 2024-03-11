import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../login/login_screen.dart';
import '../../../widgets/global_page_indicator.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_texts.dart';
import '../../../../utils/helpers/navigate.dart';

class OnboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const OnboardAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 24, right: 24),
      child: SizedBox(
        height: kToolbarHeight,
        child: Row(
          children: [
            const GlobalPageIndicator(),
            const Spacer(),
            GestureDetector(
              // skip duymesi isledi
              onTap: () {
                Navigate.navigateReplacePush(context,const LoginScreen());
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
