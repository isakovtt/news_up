import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../widgets/global_next_button.dart';
import 'write_news_bottom_item.dart';

class WriteNewsFooter extends StatelessWidget {
  const WriteNewsFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.lr24b12,
      child: Row(
        children: [
          const WriteNewsBottomItem(
            icon: AppAssets.letterCase,
          ),
          8.horizontalSpace,
          const WriteNewsBottomItem(
            icon: AppAssets.list,
          ),
          8.horizontalSpace,
          const WriteNewsBottomItem(
            icon: AppAssets.photo,
          ),
          const Spacer(),
          const GlobalNextButton()
        ],
      ),
    );
  }
}
