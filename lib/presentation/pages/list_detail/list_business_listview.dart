import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/list_business_model.dart';
import '../../../utils/constants/app_paddings.dart';
import 'list_detail_item.dart';

class ListBusinessListview extends StatelessWidget {
  const ListBusinessListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h24,
      child: ListView.separated(
        padding: AppPaddings.t25b16,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: listBusiness.length,
        separatorBuilder: (context, index) => 16.verticalSpace,
        itemBuilder: (context, index) {
          final detail = listBusiness[index];
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
