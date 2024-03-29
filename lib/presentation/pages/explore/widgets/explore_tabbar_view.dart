import 'package:flutter/material.dart';
import 'package:newsup_app/presentation/pages/explore/author/author_list_view.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';

import '../../home/widgets/news_item_list_view.dart';
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
              child: const NewsItemListView(),
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
