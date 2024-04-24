import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsup_app/presentation/pages/authorization_screens/identification/identify_type_screen/identify_type_screen.dart';
import 'package:newsup_app/utils/constants/app_assets.dart';
import 'package:newsup_app/utils/helpers/navigate.dart';

class PhoneIdentityAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const PhoneIdentityAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Center(
        child: GestureDetector(
          onTap: () {
            Navigate.navigateReplacePush(
              context,
              const IdentifyTypeScreen(),
            );
          },
          child: SvgPicture.asset(
            AppAssets.arrowNarrowLeft,
            height: 32.h,
          ),
        ),
      ),
      automaticallyImplyLeading: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
