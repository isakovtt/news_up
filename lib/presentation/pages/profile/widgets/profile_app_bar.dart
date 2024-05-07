import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_texts.dart';
import '../../../../utils/helpers/navigate.dart';
import '../../setting_screen/setting_screen.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: false,
      title: Text(
        AppTexts.profile,
        style: AppTextStyles.greyScale900s16W700,
      ),
      actions: [
        Padding(
          padding: AppPaddings.h24,
          child: GestureDetector(
            onTap: () => Navigate.navigatePush(
              context,
              const SettingScreen(),
            ),
            child: SvgPicture.asset(
              AppAssets.settings,
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
