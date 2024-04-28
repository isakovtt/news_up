import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';

class HomeChannels extends StatelessWidget {
  const HomeChannels({
    super.key,
    this.channelName = false,
  });

  final bool channelName;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance.collection('channels').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const SizedBox.shrink();
          }
          final channels = snapshot.data!.docs;

          return SizedBox(
            height: channelName ? 73.h : 48.h,
            child: ListView.separated(
              padding: AppPaddings.h24,
              scrollDirection: Axis.horizontal,
              itemCount: channels.length,
              separatorBuilder: (context, index) => 16.horizontalSpace,
              itemBuilder: (context, index) {
                final channel = channels[index];
                return Column(
                  children: [
                    SizedBox(
                      height: 48.h,
                      width: 48.w,
                      child: ClipOval(
                        child: Image.network(
                          channel['logo'],
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    if (channelName == true) ...[
                      6.verticalSpace,
                      Text(
                        channel['channel'],
                        style: AppTextStyles.greyScale400s12W400,
                      ),
                    ]
                  ],
                );
              },
            ),
          );
        });
  }
}
