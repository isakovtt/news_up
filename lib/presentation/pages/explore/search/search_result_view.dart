import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../author/author_list_view.dart';
import '../topic/topic_list_view.dart';
import '../widgets/explore_segmented_bar.dart';
import '../../../widgets/custom_basic_list_tile.dart';
import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/extensions/time_ago_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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

  Future<List<Map<String, dynamic>>> searchFirestore(String query) async {
    List<Map<String, dynamic>> resultQuery = [];
    String queryLowerCase = query.toLowerCase();
    QuerySnapshot snapshot =
        await FirebaseFirestore.instance.collection('posts').get();
    List<DocumentSnapshot> documents = snapshot.docs;
    for (var doc in documents) {
      if (doc['newsTitle'].toLowerCase().contains(queryLowerCase) ||
          doc['content'].toLowerCase().contains(queryLowerCase)) {
        resultQuery.add(doc.data() as Map<String, dynamic>);
      }
    }
    return resultQuery;
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
    return FutureBuilder<List<Map<String, dynamic>>>(
      future: searchFirestore(query),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return const Center(child: Text('An error occurred!'));
        } else {
          final resultQuery = snapshot.data!;
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
                              separatorBuilder: (context, index) =>
                                  16.verticalSpace,
                              itemBuilder: (context, index) {
                                final result = resultQuery[index];
                                return GlobalBasicListTile(
                                  image: result['newsPhoto'],
                                  categoryName: result['category'],
                                  title: result['newsTitle'],
                                  sourceIcon: result['sourceIcon'],
                                  sourceName: result['sourceName'],
                                  timeText: result['timeText'],
                                  commentCount: result['commentText'],
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
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
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
                    StreamBuilder(
                      stream: FirebaseFirestore.instance
                          .collection('posts')
                          .where('newsTitle', isGreaterThanOrEqualTo: query)
                          .where('newsTitle',
                              isLessThanOrEqualTo: '$query\uf8ff')
                          .snapshots(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                              child: CircularProgressIndicator());
                        } else if (snapshot.hasError) {
                          return const Center(
                              child: Text('An error occurred!'));
                        } else {
                          final posts = snapshot.data!.docs;
                          return ListView.separated(
                            padding: AppPaddings.h24,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: posts.length,
                            physics: const BouncingScrollPhysics(),
                            separatorBuilder: (context, index) =>
                                16.verticalSpace,
                            itemBuilder: (context, index) {
                              final post = posts[index];
                              final Timestamp timestamp = post['time'];
                              return StreamBuilder(
                                stream: FirebaseFirestore.instance
                                    .collection('channels')
                                    .where('channel',
                                        isEqualTo: post['channel'])
                                    .snapshots(),
                                builder: (context, snapshot) {
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    return const SizedBox.shrink();
                                  } else if (snapshot.hasError) {
                                    return const Center(
                                        child: Text('An error occurred!'));
                                  } else {
                                    final channel =
                                        snapshot.data!.docs.first.data();
                                    return GlobalBasicListTile(
                                      image: post['newsPhoto'],
                                      categoryName: post['category'],
                                      title: post['newsTitle'],
                                      sourceIcon: channel['logo'],
                                      sourceName: post['channel'] + ' News',
                                      timeText: timestamp.toDate().toTimeAgo(),
                                      commentCount:
                                          post['commentsCount'].toString(),
                                      titleStyle:
                                          AppTextStyles.greyScale400s14W700,
                                      style: AppTextStyles.greyScale400s12W400,
                                      hasSource: true,
                                      hasDot: true,
                                      onTap: () {},
                                    );
                                  }
                                },
                              );
                            },
                          );
                        }
                      },
                    ),
                    const TopicListView(),
                    const AuthorListView(),
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
