import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsup_app/utils/constants/app_assets.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';
import 'package:newsup_app/utils/constants/app_texts.dart';

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
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppAssets.home_2),
          label: AppTexts.home,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppAssets.search),
          label: AppTexts.explore,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppAssets.list),
          label: AppTexts.list,
        ),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.profileCircle,
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
