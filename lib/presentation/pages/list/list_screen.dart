import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'list_app_bar.dart';
import 'list_page_segmented_bar.dart';
import 'list_saved_tab_bar_view.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ListAppBar(),
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              18.verticalSpace,
              const ListPageSegmentedBar(),
              24.verticalSpace,
              const ListSavedTabBarView(),
            ],
          ),
        ),
      ),
    );
  }
}
