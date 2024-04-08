import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../data/models/news_headline_model.dart';
import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../widgets/custom_basic_list_tile.dart';
import '../author/author_list_view.dart';
import '../topic/topic_list_view.dart';
import '../widgets/explore_segmented_bar.dart';

class CustomSearch extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: SvgPicture.asset(
        AppAssets.arrowNarrowLeft,
        height: 32,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<NewsHeadlineModel> resultQuery = [];
    for (var item in newsheadline) {
      if (item.headlineText.toLowerCase().contains(query.toLowerCase())) {
        resultQuery.add(item);
      }
    }
    return SingleChildScrollView(
      child: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              const ExploreSegmentedBar(),
              30.verticalSpace,
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: TabBarView(
                    children: <Widget>[
                      ListView.separated(
                        padding: AppPaddings.h24,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: resultQuery.length,
                        physics: const BouncingScrollPhysics(),
                        separatorBuilder: (context, index) => 16.verticalSpace,
                        itemBuilder: (context, index) {
                          final result = resultQuery[index];
                          return GlobalBasicListTile(
                            image: result.image,
                            categoryName: result.categoryText,
                            title: result.headlineText,
                            sourceIcon: result.sourceIcon,
                            sourceName: result.sourceName,
                            timeText: result.timeText,
                            commentText: result.commentText,
                            titleStyle: AppTextStyles.greyScale400s14W700,
                            style: AppTextStyles.greyScale400s12W400,
                            hasSource: true,
                            hasDot: true,
                            onTap: () {},
                          );
                        },
                      ),
                      const TopicListView(),
                      const AuthorListView(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<NewsHeadlineModel> machQuery = [];
    for (var item in newsheadline) {
      if (item.headlineText.toLowerCase().contains(query.toLowerCase())) {
        machQuery.add(item);
      }
    }
    return SingleChildScrollView(
      child: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              const ExploreSegmentedBar(),
              30.verticalSpace,
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: TabBarView(
                  children: <Widget>[
                    ListView.separated(
                      padding: AppPaddings.h24,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: machQuery.length,
                      physics: const BouncingScrollPhysics(),
                      separatorBuilder: (context, index) => 16.verticalSpace,
                      itemBuilder: (context, index) {
                        final result = machQuery[index];
                        return GlobalBasicListTile(
                          image: result.image,
                          categoryName: result.categoryText,
                          title: result.headlineText,
                          sourceIcon: result.sourceIcon,
                          sourceName: result.sourceName,
                          timeText: result.timeText,
                          commentText: result.commentText,
                          titleStyle: AppTextStyles.greyScale400s14W700,
                          style: AppTextStyles.greyScale400s12W400,
                          hasSource: true,
                          hasDot: true,
                          onTap: () {},
                        );
                      },
                    ),
                    const TopicListView(),
                    const AuthorListView()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
