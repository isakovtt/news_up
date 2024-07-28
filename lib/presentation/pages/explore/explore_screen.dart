import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/cubits/home/home_cubit.dart';
import 'package:newsup_app/utils/enums/post_view_type.dart';

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

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
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
            StreamBuilder(
                initialData: cubit.postViewTypeSubject.value,
                stream: cubit.postViewTypeSubject.stream,
                builder: (context, snapshot) {
                  final viewType = snapshot.data;
                  return Column(
                    children: [
                      GlobalLayouts(
                        text: AppTexts.hotNews,
                        listOnTap: () => cubit.changeViewToList(),
                        gridOnTap: () => cubit.changeViewToGrid(),
                        listColorFilter: viewType == PostViewType.list
                            ? AppColorFilters.primaryBaseSrcIn
                            : AppColorFilters.greyScale400SrcIn,
                        gridColorFilter: viewType == PostViewType.list
                            ? AppColorFilters.greyScale400SrcIn
                            : AppColorFilters.primaryBaseSrcIn,
                      ),
                      16.verticalSpace,
                      viewType == PostViewType.list
                          ? const ExploreListView() 
                          : const ExploreGridView(),
                    ],
                  );
                }),
          ],
        ),
      ),
    );
  }
}
