import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../widgets/custom_circle_avatar.dart';
import '../../../widgets/global_divider.dart';
import 'notification_accept_button.dart';
import 'notification_decline_button.dart';

class NotificationFollowedListTile extends StatelessWidget {
  const NotificationFollowedListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          isThreeLine: true,
          leading: const CustomCircleAvatar(
            image: AppAssets.authorImage_4,
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '5 min ago',
                style: AppTextStyles.greyScale400s12W500,
              ),
              4.verticalSpace,
              RichText(
                text: TextSpan(
                  text: 'Jhon Digta',
                  style: AppTextStyles.greyScale900s12W700,
                  children: [
                    WidgetSpan(
                      child: 4.horizontalSpace,
                    ),
                    TextSpan(
                      text: 'Started following you',
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
              children: [
                const NotificationAcceptButton(),
                8.horizontalSpace,
                const NotificationDeclineButton(),
              ],
            ),
          ),
        ),
        24.verticalSpace,
        Padding(
          padding: AppPaddings.h24,
          child: const GlobalDivider(),
        )
      ],
    );
  }
}
