import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/presentation/pages/list/list_recent_item.dart';
import 'package:newsup_app/presentation/pages/list_detail/list_detail_screen.dart';
import 'package:newsup_app/utils/helpers/navigate.dart';

import '../../../data/models/list_saved_model.dart';
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
                    // final list = listSaved[index];
                    final list = listDatas[index];
                    return StreamBuilder(
                      stream: FirebaseFirestore.instance
                          .collection('lists')
                          .doc(list.id)
                          .snapshots(),
                      builder: (context, snapshot) {
                        if (!snapshot.hasData) {
                          return const SizedBox.shrink();
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
          SingleChildScrollView(
            child: ListView.separated(
              itemCount: listSaved.length,
              shrinkWrap: true,
              separatorBuilder: (context, index) => 24.verticalSpace,
              itemBuilder: (context, index) {
                final listy = listSaved[index];
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
          ),
          const SingleChildScrollView(child: Center(child: Text('data'))),
        ],
      ),
    );
  }
}
