import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants/app_assets.dart';
import '../../../utils/constants/app_color_filters.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_text_styles.dart';
import '../../../utils/constants/app_texts.dart';

class NewsNavigationBar extends StatefulWidget {
  const NewsNavigationBar({
    Key? key,
    required this.selectedIndex,
    required this.onIndexChanged, // New callback function
  }) : super(key: key);
  final int selectedIndex;
  final Function(int) onIndexChanged; // Callback function type definition

  @override
  State<NewsNavigationBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<NewsNavigationBar> {
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
      currentIndex: widget.selectedIndex,
      selectedItemColor: AppColors.primaryBase,
      onTap: (index) {
        widget.onIndexChanged(index); // Call the callback function
      },
    );
  }
}
