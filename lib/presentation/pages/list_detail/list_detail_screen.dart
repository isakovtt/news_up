import 'package:flutter/material.dart';
import 'package:newsup_app/presentation/pages/bottom_navigation/navigation_screen.dart';
import 'package:newsup_app/presentation/pages/bottom_navigation/news_navigation_bar.dart';

import 'list_detail_app_bar.dart';
import 'list_detail_list_view.dart';

class ListDetailScreen extends StatelessWidget {
  const ListDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const ListDetailAppBar(),
        body: const ListDetailListView(),
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
