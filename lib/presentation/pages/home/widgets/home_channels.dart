import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/presentation/pages/channel/channel_screen.dart';
import 'package:newsup_app/utils/helpers/navigate.dart';

import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';

class HomeChannels extends StatelessWidget {
  const HomeChannels({super.key});

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
          height: 73.h,
          child: ListView.separated(
            padding: AppPaddings.h24,
            scrollDirection: Axis.horizontal,
            itemCount: channels.length,
            separatorBuilder: (context, index) => 16.horizontalSpace,
            itemBuilder: (_, index) {
              final channel = channels[index];
              return Column(
                children: [
                  SizedBox(
                    height: 48.h,
                    width: 48.w,
                    child: ClipOval(
                      child: GestureDetector(
                        child: Image.network(
                          channel['logo'],
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.cover,
                        ),
                        onTap: () {
                          Navigate.navigatePush(
                            context,
                            ChannelScreen(
                              channelId: channel,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  6.verticalSpace,
                  Text(
                    channel['channel'],
                    style: AppTextStyles.greyScale400s12W400,
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
