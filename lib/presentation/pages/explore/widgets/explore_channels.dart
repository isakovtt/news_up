import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';

class ExploreChannels extends StatelessWidget {
  const ExploreChannels({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('channels')
          .snapshots()
          .delay(const Duration(seconds: 2)),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return  _buildShimmer();
        }
        final channels = snapshot.data!.docs;

        return SizedBox(
          height: 73.h,
          child: ListView.separated(
            padding: AppPaddings.h24,
            scrollDirection: Axis.horizontal,
            itemCount: channels.length,
            separatorBuilder: (context, index) => 16.horizontalSpace,
            itemBuilder: (context, index) {
              final channel = channels[index];
              return Column(children: [
                SizedBox(
                  width: 48.r,
                  height: 48.r,
                  child: ClipOval(
                    child: Image.network(
                      channel['logo'],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                6.verticalSpace,
                Text(
                  channel['channel'],
                  style: AppTextStyles.greyScale400s12W400,
                ),
              ]);
            },
          ),
        );
      },
    );
  }
}


Widget _buildShimmer() {
    return SizedBox(
      height: 73.h,
      child: Shimmer.fromColors(
        period: const Duration(seconds: 2),
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: ListView.builder(
          padding: AppPaddings.h24,
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (_, __) => Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: Column(
              children: [
                const CircleAvatar(radius: 28),
                SizedBox(height: 6.h),
                Container(
                  height: 12.h,
                  width: 54.w,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
