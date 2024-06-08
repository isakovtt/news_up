import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_color_filters.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../widgets/global_comment_input.dart';
import '../../../widgets/global_dot.dart';

class DetailFooter extends StatelessWidget {
  const DetailFooter({super.key, required this.postId});
  final String postId;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.lr24b12t13,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
               Expanded(
                child: GlobalCommentInput(postId: postId,),
              ),
              12.horizontalSpace,
              Stack(
                children: [
                  SvgPicture.asset(
                    AppAssets.messageCircle,
                    colorFilter: AppColorFilters.greyScale400SrcIn,
                  ),
                  const Positioned(
                    right: 0,
                    top: 0,
                    child: GlobalDot.notification(),
                  ),
                  Positioned(
                    right: 3,
                    top: 0,
                    child: Text(
                      '5',
                      style: AppTextStyles.whiteS7W500,
                    ),
                  )
                ],
              ),
              8.horizontalSpace,
              SvgPicture.asset(
                AppAssets.heart,
                colorFilter: AppColorFilters.greyScale400SrcIn,
              ),
              8.horizontalSpace,
              SvgPicture.asset(
                AppAssets.eye,
                colorFilter: AppColorFilters.greyScale400SrcIn,
              ),
            ],
          )
        ],
      ),
    );
  }
}
