import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../data/models/channels_model.dart';
import '../../../../utils/constants/app_box_decorations.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';

class Channels extends StatelessWidget {
  const Channels({super.key, this.channelName = false});

  final bool channelName;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: channelName ? 73.h : 48.h,
        child: ListView.separated(
          padding: AppPaddings.h24,
          scrollDirection: Axis.horizontal,
          itemCount: contents.length,
          separatorBuilder: (context, index) => 16.horizontalSpace,
          itemBuilder: (context, index) {
            final item = contents[index];
            return Column(
              children: [
                SizedBox(
                  width: 48.r,
                  height: 48.r,
                  child: DecoratedBox(
                    decoration: AppBoxDecorations.greyScale100R1000,
                    child: Center(
                      child: SvgPicture.asset(
                        item.icon,
                      ),
                    ),
                  ),
                ),
                if (channelName == true) ...[
                  6.verticalSpace,
                  Text(
                    item.channelName,
                    style: AppTextStyles.greyScale400s12W400,
                  ),
                ]
              ],
            );
          },
        ),
      ),
    );
  }
}
