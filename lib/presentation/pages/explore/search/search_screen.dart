import 'package:flutter/material.dart';

import 'search_app_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SearchAppBar(),
      // body: SafeArea(
      //   child: DefaultTabController(
      //     length: 3,
      //     child: Column(
      //       children: [
      //         const ExploreSegmentedBar(),
      //         24.verticalSpace,
      //         const ExploreTabbarView(),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
