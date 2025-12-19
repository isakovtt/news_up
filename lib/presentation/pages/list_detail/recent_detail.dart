import 'package:flutter/material.dart';
import 'package:newsup_app/presentation/pages/list_detail/recent_list_view.dart';

import '../bottom_navigation/navigation_screen.dart';
import '../bottom_navigation/news_navigation_bar.dart';
import 'list_detail_app_bar.dart';

class RecentDetail extends StatelessWidget {
  const RecentDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const ListDetailAppBar(),
        body:  const RecentListView(),
        bottomNavigationBar: NewsNavigationBar(
          selectedIndex: 2,
          onIndexChanged: (value) => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const NavigationScreen(),
            ),
          ),
        ));
  }
}
