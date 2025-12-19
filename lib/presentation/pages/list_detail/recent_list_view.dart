import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/data/models/list_detail_model.dart';

import '../../../utils/constants/app_paddings.dart';
import 'list_detail_item.dart';

class RecentListView extends StatelessWidget {
  const RecentListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h24,
      child: ListView.separated(
        padding: AppPaddings.t25b16,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: listDetail.length,
        separatorBuilder: (context, index) => 16.verticalSpace,
        itemBuilder: (context, index) {
          final detail = listDetail[index];
          return ListDetailItem(
            image: detail.image,
            cotegory: detail.cotegoryName,
            title: detail.title,
            commentCount: detail.comment,
            timeCount: detail.time,
          );
        },
      ),
    );
  }
}
