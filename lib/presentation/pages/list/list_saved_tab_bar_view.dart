import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          SingleChildScrollView(
            child: ListView.separated(
              itemCount: listSaved.length,
              shrinkWrap: true,
              separatorBuilder: (context, index) => 24.verticalSpace,
              itemBuilder: (context, index) {
                final list = listSaved[index];
                return ListSavedItem(
                  image: list.image,
                  category: list.categoryTitle,
                  description: list.description,
                  onTap: () => Navigate.navigatePush(
                    context,
                    const ListDetailScreen(),
                  ),
                );
              },
            ),
          ),
          SingleChildScrollView(child: Center(child: Text('data'))),
          SingleChildScrollView(child: Center(child: Text('data'))),
        ],
      ),
    );
  }
}
