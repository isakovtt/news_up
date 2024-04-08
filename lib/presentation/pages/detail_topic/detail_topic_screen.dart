import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/global_view.dart';
import '../explore/widgets/explore_app_bar.dart';
import 'widgets/topic_account_info.dart';
import 'widgets/topic_all_header_statistics.dart';
import 'widgets/topic_button.dart';
import 'widgets/topic_grid_view.dart';
import 'widgets/topic_layouts.dart';

class DetailTopicScreen extends StatelessWidget {
  const DetailTopicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const ExploreAppBar(),
        body: GlobalView(children: [
          9.verticalSpace,
          const TopicAllHeaderStatistics(),
          23.verticalSpace,
          const TopicAccountInfo(),
          24.verticalSpace,
          const TopicButton(),
          22.verticalSpace,
          const TopicLayouts(),
          22.verticalSpace,
          const TopicGridView(),
        ]));
  }
}
