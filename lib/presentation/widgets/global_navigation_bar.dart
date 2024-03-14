import 'package:flutter/material.dart';

import '../../data/models/bottom_navigation_bar_model.dart';
import 'global_nav_bar_item.dart';

class GlobalNavigationBar extends StatelessWidget {
  const GlobalNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 67,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          bottomNavItems.length,
          (index) {
            final navItems = bottomNavItems[index];
            return GlobalNavBarItem(
              icon: navItems.iconSvg,
              text: navItems.text,
            );
          },
        ),
      ),
    );
  }
}
