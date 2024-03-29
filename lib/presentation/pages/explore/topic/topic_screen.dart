import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../explore_app_bar.dart';
import '../widgets/explore_segmented_bar.dart';

class TopicScreen extends StatelessWidget {
  const TopicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ExploreAppBar(),
      body: PreferredSize(
        preferredSize: Size.fromHeight(40.h),
        child: const SafeArea(
          child: DefaultTabController(
            length: 3,
            child: ExploreSegmentedBar(),
          ),
        ),
      ),
    );
  }
}
