import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/utils/constants/app_texts.dart';

import '../../widgets/global_view_more.dart';
import '../../widgets/global_live_news.dart';
import '../home/widgets/channels.dart';
import 'explore_app_bar.dart';
import 'explore_chips.dart';
import 'explore_grid_view.dart';
import 'explore_layouts.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ExploreAppBar(),
      body: SingleChildScrollView(
        child: Column(children: [
          16.verticalSpace,
          const ExploreChips(),
          24.verticalSpace,
          const GlobalViewMore(text: AppTexts.breakingNews),
          24.verticalSpace,
          const GlobalLiveNews(),
          32.verticalSpace,
          const Channels(channelName: true),
          18.verticalSpace,
          const ExploreLayouts(),
          16.verticalSpace,
          const ExploreGridView()
        ]),
      ),
    );
  }
}
