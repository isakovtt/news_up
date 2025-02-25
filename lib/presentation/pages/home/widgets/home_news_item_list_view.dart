import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/extensions/time_ago_extension.dart';
import '../../../../utils/helpers/navigate.dart';
import '../../../widgets/custom_basic_list_tile.dart';
import '../../comments/comments_screen.dart';
import '../../detail/detail_news_screen.dart';
import 'home_sheet.dart';
import 'home_shimmer.dart';

class HomeNewsItemListView extends StatelessWidget {
  const HomeNewsItemListView({
    super.key,
    required this.selectedCategory,
  });

  final String selectedCategory;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: selectedCategory == 'Trending'
          ? FirebaseFirestore.instance
              .collection('posts')
              .orderBy('time', descending: true)
              .snapshots()
          : FirebaseFirestore.instance
              .collection('posts')
              .where('category', isEqualTo: selectedCategory)
              .orderBy('time', descending: true)
              .snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const SizedBox.shrink();
        }
        final posts = snapshot.data!.docs;
        return Padding(
          padding: AppPaddings.h24,
          child: ListView.separated(
            padding: AppPaddings.b16,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: posts.length,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => 16.verticalSpace,
            itemBuilder: (context, index) {
              final post = posts[index];
              final Timestamp timestamp = post['time'] ??  Timestamp.fromMillisecondsSinceEpoch(0);
              return StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('channels')
                    .where('channel', isEqualTo: post['channel'])
                    .snapshots()
                    .delay(const Duration(seconds: 2)),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const HomeShimmer();
                  }
                  final channel = snapshot.data!.docs.first.data();
                  return StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('comments')
                        .doc(post.id)
                        .collection('postComments')
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return const SizedBox.shrink();
                      }
                      final commentCount = snapshot.data!.docs;

                      return GlobalBasicListTile(
                        image: post['newsPhoto'],
                        categoryName: post['category'],
                        title: post['newsTitle'],
                        sourceIcon: channel['logo'],
                        sourceName: post['channel'] + ' News',
                        timeText: timestamp.toDate().toTimeAgo(),
                        commentCount: commentCount.length.toString(),
                        hasSource: true,
                        commentOnTap: () {
                          Navigate.navigatePush(
                              context,
                              CommentsScreen(
                                postId: post.id,
                              ));
                        },
                        onTap: () {
                          Navigate.navigatePush(
                            context,
                            DetailNewsScreen(postId: post.id),
                          );
                        },
                        dotsOnTap: () {
                          final RenderBox box =
                              context.findRenderObject() as RenderBox;
                          final Offset position =
                              box.localToGlobal(Offset.zero);
                          showPopupMenu(context, position, index,post);
                        },
                      );
                    },
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}

void showPopupMenu(
    BuildContext context, Offset tapPosition, int itemIndex,QueryDocumentSnapshot<Map<String, dynamic>> post) async {
  final RenderBox overlay =
      Overlay.of(context).context.findRenderObject() as RenderBox;
  final Offset position = overlay.globalToLocal(tapPosition);

  final double right = MediaQuery.of(context).size.width - position.dx;

  final RelativeRect positionRect = RelativeRect.fromLTRB(
    right,
    position.dy,
    MediaQuery.of(context).size.width - right,
    position.dy,
  );

  await showMenu(
    context: context,
    position: positionRect,
    color: AppColors.white,
    surfaceTintColor: AppColors.white,
    shape: const Border.fromBorderSide(
      BorderSide(
        width: 2,
        color: AppColors.primary_100,
        style: BorderStyle.none,
      ),
    ),
    items: [
      PopupMenuItem(
        onTap: () {
          HomeSheet.globalSheet(context,post);
        },
        value: 'save list',
        child: const Text('Save'),
      ),
      PopupMenuItem(
        onTap: () {
          print('Report item at index $itemIndex');
        },
        value: 'report',
        child: const Text('Report'),
      ),
    ],
    elevation: 8.0,
  );
}
