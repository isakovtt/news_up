import 'package:flutter/material.dart';

import '../../../../utils/constants/app_paddings.dart';
import '../author/author_list_view.dart';
import '../stories/explore_stories_list_view.dart';
import '../topic/topic_list_view.dart';

class ExploreTabbarView extends StatelessWidget {
  const ExploreTabbarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        children: <Widget>[
          SingleChildScrollView(
            child: Padding(
              padding: AppPaddings.t10,
              child: const ExploreStoriesListView(),
            ),
          ),
          const SingleChildScrollView(
            child: TopicListView(),
          ),
          const SingleChildScrollView(
            child: AuthorListView(),
          ),
        ],
      ),
    );
  }
}
