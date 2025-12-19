import 'package:flutter/material.dart';

import '../bottom_navigation/navigation_screen.dart';
import '../bottom_navigation/news_navigation_bar.dart';
import 'list_business_listview.dart';
import 'list_detail_app_bar.dart';

class ListBusiness extends StatelessWidget {

  const ListBusiness({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
        appBar: const ListDetailAppBar(),
        body: const ListBusinessListview(),
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