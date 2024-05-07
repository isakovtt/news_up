import 'package:flutter/material.dart';

import '../explore/explore_screen.dart';
import '../list/list_screen.dart';
import '../profile/profile_screen.dart';
import '../home/home_screen.dart';
import 'news_navigation_bar.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int selectedIndex = 0;

  final List screens = const [
    HomeScreen(),
    ExploreScreen(),
    ListScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: NewsNavigationBar(
          selectedIndex: selectedIndex,
          onIndexChanged: (index) {
            setState(
              () {
                selectedIndex = index; // Update the selected index
              },
            );
          },
        ),
      ),
    );
  }
}
