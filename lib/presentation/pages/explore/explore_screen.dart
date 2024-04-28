import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/app_color_filters.dart';
import '../../../utils/constants/app_texts.dart';
import '../../widgets/global_layouts.dart';
import '../../widgets/global_live_news.dart';
import '../../widgets/global_view_more.dart';
import 'search/search_app_bar.dart';
import 'widgets/explore_channels.dart';
import 'widgets/explore_chips.dart';
import 'widgets/explore_grid_view.dart';
import 'widgets/explore_list_view.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

bool layoutCheked = false;

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SearchAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            16.verticalSpace,
            const ExploreChips(),
            24.verticalSpace,
            const GlobalViewMore(text: AppTexts.breakingNews),
            24.verticalSpace,
            const GlobalLiveNews(),
            32.verticalSpace,
            const ExploreChannels(),
            18.verticalSpace,
            GlobalLayouts(
              text: AppTexts.hotNews,
              listOnTap: () {
                layoutCheked = true;
                setState(() {});
              },
              gridOnTap: () {
                layoutCheked = false;
                setState(() {});
              },
              listColorFilter: layoutCheked
                  ? AppColorFilters.primaryBaseSrcIn
                  : AppColorFilters.greyScale400SrcIn,
              gridColorFilter: layoutCheked
                  ? AppColorFilters.greyScale400SrcIn
                  : AppColorFilters.primaryBaseSrcIn,
            ),
            16.verticalSpace,
            layoutCheked ? const ExploreListView() : const ExploreGridView()
          ],
        ),
      ),
    );
  }
}
