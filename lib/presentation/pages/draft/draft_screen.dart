import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/draft_app_bar.dart';
import 'widgets/draft_segmented_bar.dart';
import 'widgets/draft_tab_bar_view.dart';

class DraftScreen extends StatefulWidget {
  const DraftScreen({super.key});

  @override
  State<DraftScreen> createState() => _DraftScreenState();
}

class _DraftScreenState extends State<DraftScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DraftAppBar(),
      body: PreferredSize(
        preferredSize: Size.fromHeight(40.h),
        child: SafeArea(
          child: DefaultTabController(
            length: 2,
            child: Column(
              children: <Widget>[
                const DraftSegmentedBar(),
                24.verticalSpace,
                const DraftTabBarView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
