import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsup_app/presentation/pages/bottom_navigation/app_router.dart';
import 'package:newsup_app/utils/constants/route_constants.dart';

import '../../../utils/constants/app_assets.dart';
import '../../../utils/constants/app_color_filters.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_text_styles.dart';
import '../../../utils/constants/app_texts.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({
    Key? key,
    // required this.selectedIndex,   
    // required this.onIndexChanged, // New callback function   
  }) : super(key: key);
  // final Function(int) onIndexChanged; // Callback function type definition

  @override
  State<CustomNavigationBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<CustomNavigationBar> {
  int selectedIndex =0;


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 10,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: AppTextStyles.greyScale400s12W500,
      unselectedItemColor: AppColors.greyScale_400,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppAssets.home_2,
            height: 22,
            colorFilter: AppColorFilters.greyScale400SrcIn,
          ),
          activeIcon: SvgPicture.asset(
            AppAssets.home_2,
            height: 22,
            colorFilter: AppColorFilters.primaryBaseSrcIn,
          ),
          label: AppTexts.home,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppAssets.search,
            height: 22,
            colorFilter: AppColorFilters.greyScale400SrcIn,
          ),
          activeIcon: SvgPicture.asset(
            AppAssets.search,
            height: 22,
            colorFilter: AppColorFilters.primaryBaseSrcIn,
          ),
          label: AppTexts.explore,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppAssets.frame,
            height: 22,
            colorFilter: AppColorFilters.greyScale400SrcIn,
          ),
          activeIcon: SvgPicture.asset(
            AppAssets.frame,
            height: 22,
            colorFilter: AppColorFilters.primaryBaseSrcIn,
          ),
          label: AppTexts.list,
        ),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.profileCircle,
              height: 22,
              colorFilter: AppColorFilters.greyScale400SrcIn,
            ),
            activeIcon: SvgPicture.asset(
              AppAssets.profileCircle,
              height: 22,
              colorFilter: AppColorFilters.primaryBaseSrcIn,
            ),
            label: AppTexts.profile),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: AppColors.primaryBase,
      onTap: (index) {
        // onIndexChanged(index); // Call the callback function
        setState(() {
          selectedIndex = index;
        });
        changeTab(index);
      },
    );
  }

  void changeTab(int index) {
    switch (index) {
      case 0:
        router.pushNamed(RouteConstants.home);
        router.dispose();

        break;
      case 1:
        router.pushNamed(RouteConstants.explore);
        router.dispose();

        break;
      case 2:
        router.pushNamed(RouteConstants.list);
        router.dispose();

        break;
      case 3:
        router.pushNamed(RouteConstants.profile);
        router.dispose();

        break;
      // default:
      //   router.pushNamed(RouteConstants.home);

      //   break;
    }
  }
}
