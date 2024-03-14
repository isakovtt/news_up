import 'package:flutter/material.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';

class GlobalNavigationBar extends StatelessWidget {
  const GlobalNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: AppColors.greyScale_400,
          ),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.school,
            color: AppColors.greyScale_400,
          ),
          label: 'List',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_box_rounded,
            color: AppColors.greyScale_400,
          ),
          label: 'Profile',
        ),
      ],
      currentIndex: 0,
      selectedItemColor: AppColors.primaryBase,
      onTap: (value) => {},
    );
  }
}
