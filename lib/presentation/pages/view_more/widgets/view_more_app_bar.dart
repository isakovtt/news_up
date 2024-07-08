import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_texts.dart';
import '../../../../utils/helpers/navigate.dart';
import '../../../widgets/global_divider.dart';
import '../../bottom_navigation/navigation_screen.dart';

class ViewMoreAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ViewMoreAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        AppTexts.allNews,
        style: AppTextStyles.greyScale900s16W700,
      ),
      automaticallyImplyLeading: false,
      leadingWidth: 62,
      centerTitle: true,
      leading: Center(
        child: GestureDetector(
          onTap: () {
            Navigate.navigateReplacePush(
              context,
              const NavigationScreen(),
            );
          },
          child: SvgPicture.asset(
            AppAssets.arrowNarrowLeft,
            height: 32,
          ),
        ),
      ),
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(2),
        child: GlobalDivider(),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
