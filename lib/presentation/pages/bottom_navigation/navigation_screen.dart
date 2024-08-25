import 'package:flutter/material.dart';

import '../explore/explore_screen.dart';
import '../home/home_screen.dart';
import '../list/list_screen.dart';
import '../profile/profile_screen.dart';
import 'news_navigation_bar.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int selectedIndex = 0;

  final List<Widget> screens = const [
    HomeScreen(),
    ExploreScreen(),
    ListScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      //  IndexedStack(
      //   alignment: Alignment.bottomCenter,
      //   index: selectedIndex,
      //   children: screens,
      // ),
      screens[selectedIndex], 

      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: NewsNavigationBar(
          selectedIndex: selectedIndex,
          onIndexChanged: _onItemTapped,
          // onIndexChanged: (index) {
          //   setState(
          //     () {
          //       selectedIndex = index;
          //       // Update the selected index
          //     },
          //   );
          // },
        ),
      ),
    );
  }
  // void changeTab(int index) {
  //   switch (index) {
  //     case 0:
  //       router.pushNamed(RouteConstants.home);
  //       router.dispose();

  //       break;
  //     case 1:
  //       router.pushNamed(RouteConstants.explore);
  //       router.dispose();

  //       break;
  //     case 2:
  //       router.pushNamed(RouteConstants.list);
  //       router.dispose();

  //       break;
  //     case 3:
  //       router.pushNamed(RouteConstants.profile);
  //       router.dispose();

  //       break;
  //     // default:
  //     //   router.pushNamed(RouteConstants.home);

  //     //   break;
  //   }
  // }
}
