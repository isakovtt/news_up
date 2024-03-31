import 'package:flutter/material.dart';
import 'package:newsup_app/presentation/pages/edit_profile/edit_profile_screen.dart';
import 'package:newsup_app/presentation/pages/explore/explore_screen.dart';
import 'package:newsup_app/presentation/pages/explore/topic/topic_screen.dart';
import 'package:newsup_app/presentation/pages/home/home_screen.dart';
import 'package:newsup_app/presentation/pages/home/news_navigation_bar.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _selectedIndex = 0;

  final List screens = const [
    HomeScreen(),
    ExploreScreen(),
    TopicScreen(),
    EditProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: NewsNavigationBar(
        selectedIndex: _selectedIndex,
        onIndexChanged: (index) {
          setState(
            () {
              _selectedIndex = index; // Update the selected index
            },
          );
        },
      ),
    );
  }
}
