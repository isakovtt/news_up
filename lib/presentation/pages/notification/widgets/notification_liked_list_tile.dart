import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_box_decorations.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../widgets/global_divider.dart';

class NotificationLikedListTile extends StatelessWidget {
  const NotificationLikedListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          isThreeLine: true,
          leading: ClipOval(
      child: Image.asset(
        AppAssets.authorImage_2,
        fit: BoxFit.cover,
        height: 48.h,
        width: 48.w,
      ),
    ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '2 hour ago',
                style: AppTextStyles.greyScale400s12W500,
              ),
              4.verticalSpace,
              RichText(
                text: TextSpan(
                  text: 'Leonardo de Vinci',
                  style: AppTextStyles.greyScale900s12W700,
                  children: [
                    WidgetSpan(
                      child: 4.horizontalSpace,
                    ),
                    TextSpan(
                      text: 'Like your article',
                      style: AppTextStyles.greyScale400s12W500,
                    ),
                  ],
                ),
              ),
            ],
          ),
          subtitle: Padding(
            padding: AppPaddings.t12,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
      clipBehavior: Clip.antiAlias,
      decoration: AppBoxDecorations.circular12,
      child: Image.asset(
        AppAssets.draftImage_1,
        width:  40.r,
        height:  40.r,
        fit: BoxFit.cover,
      ),
    ),
                12.horizontalSpace,
                SizedBox(
                  width: 220.w,
                  child: Text(
                    'How Technology is Revolutionizing Business',
                    style: AppTextStyles.greyScale900s14W700,
                  ),
                )
              ],
            ),
          ),
        ),
        24.verticalSpace,
        Padding(
          padding: AppPaddings.h24,
          child: const GlobalDivider(),
        ),
      ],
    );
  }
}
