import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../data/models/channels_model.dart';
import '../../../../utils/constants/app_box_decorations.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';

class Channels extends StatelessWidget {
  const Channels({
    super.key,
    this.channelName = false,
    required this.channels,
  });

  final bool channelName;
  final List<QueryDocumentSnapshot<Map<String, dynamic>>> channels;

  @override
  Widget build(BuildContext context) {
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
                width: 48.r,
                height: 48.r,
                child: DecoratedBox(
                  decoration: AppBoxDecorations.greyScale100R1000,
                  child: Image.network(channel['logo']),
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
  }
}
