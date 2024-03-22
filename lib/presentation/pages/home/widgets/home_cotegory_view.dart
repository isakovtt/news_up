import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';

import '../../../../data/models/cotegory_model.dart';
import '../../../../utils/constants/app_text_styles.dart';

class HomeCotegoryView extends StatelessWidget {
  const HomeCotegoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 26.r,
      child: ListView.separated(
        padding: AppPaddings.h24,
        scrollDirection: Axis.horizontal,
        itemCount: cotegory.length,
        separatorBuilder: (context, index) => 16.horizontalSpace,
        itemBuilder: (context, index) {
          final item = cotegory[index];
          return Text(
            item.catogory,
            style: AppTextStyles.secondBaseS16W500,
          );
        },
      ),
    );
  }
}
