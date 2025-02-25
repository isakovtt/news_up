import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/list_highlight_model.dart';
import '../../../data/models/list_recent_model.dart';
import '../../../utils/helpers/navigate.dart';
import '../list_detail/list_detail_screen.dart';
import 'list_highlight_item.dart';
import 'list_recent_item.dart';
import 'list_saved_item.dart';

class ListSavedTabBarView extends StatelessWidget {
  const ListSavedTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        children: <Widget>[
          StreamBuilder(
              stream:
                  FirebaseFirestore.instance.collection('lists').snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const SizedBox.shrink();
                }

                final listDatas = snapshot.data!.docs;
                return ListView.separated(
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: listDatas.length,
                  shrinkWrap: true,
                  separatorBuilder: (context, index) => 12.verticalSpace,
                  itemBuilder: (context, index) {
                    final list = listDatas[index];
                    return StreamBuilder(
                      stream: FirebaseFirestore.instance
                          .collection('lists')
                          .doc(list.id)
                          .snapshots(),
                      builder: (context, snapshot) {
                        if (!snapshot.hasData) {
                          return   const SizedBox.shrink();
                        }
                        return Column(
                          children: [
                            ListSavedItem(
                              image: list['listPicture'],
                              category: list['listName'],
                              description: list['listDescription'],
                              onTap: () => Navigate.navigatePush(
                                context,
                                const ListDetailScreen(),
                              ),
                            ),
                            14.verticalSpace
                          ],
                        );
                      },
                    );
                  },
                );
              }),

//////////////////////////////////////////////////////

          /////////////////////////////////////////////////
          ListView.separated(
            physics: const AlwaysScrollableScrollPhysics(),
            itemCount: listRecent.length,
            shrinkWrap: true,
            separatorBuilder: (context, index) => 24.verticalSpace,
            itemBuilder: (context, index) {
              final listy = listRecent[index];
              return ListRecentItem(
                image: listy.image,
                category: listy.categoryTitle,
                description: listy.description,
                onTap: () => Navigate.navigatePush(
                  context,
                  const ListDetailScreen(),
                ),
              );
            },
          ),

          // /////////////////////////////////////////////////////
          // ////////////////////////////////////

          ListView.separated(
            physics: const AlwaysScrollableScrollPhysics(),
            itemCount: listHighlight.length,
            shrinkWrap: true,
            separatorBuilder: (context, index) => 24.verticalSpace,
            itemBuilder: (context, index) {
              final listy = listHighlight[index];
              return ListHighlightItem(
                image: listy.image,
                category: listy.categoryTitle,
                description: listy.description,
                onTap: () => Navigate.navigatePush(
                  context,
                  const ListDetailScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
