import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsup_app/presentation/pages/list/list_screen.dart';
import 'package:newsup_app/utils/helpers/navigate.dart';

import '../../../utils/constants/app_assets.dart';
import '../../../utils/constants/app_paddings.dart';
import '../../../utils/constants/app_text_styles.dart';
import '../../widgets/global_divider.dart';

class ListDetailAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ListDetailAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leadingWidth: 76.w,
      scrolledUnderElevation: 0,
      leading: Center(
        child: GestureDetector(
          onTap: () => Navigate.navigatePop(
            context,
            const ListScreen(),
          ),
          child: SvgPicture.asset(
            AppAssets.arrowNarrowLeft,
            height: 32.h,
            width: 32.w,
          ),
        ),
      ),
      title: Text(
        'Your List',
        style: AppTextStyles.greyScale900s16W700,
      ),
      actions: [
        Padding(
          padding: AppPaddings.h24,
          child: SvgPicture.asset(AppAssets.filter),
        )
      ],
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(1),
        child: GlobalDivider(),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
