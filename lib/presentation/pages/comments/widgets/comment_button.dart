import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../widgets/global_circle_rectangle.dart';

class CommentButton extends StatelessWidget {

  const CommentButton({ super.key, required this.countText, required this.icon, this.width, this.height });

  final String countText;
  final String icon;
  final double? width;
  final double? height;


   @override
   Widget build(BuildContext context) {
       return GlobalCircleRectangle(width: width,height: height,
            child: Padding(
              padding: AppPaddings.r4l2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    height: 13.h,
                    width: 11.w,
                    icon,
                    colorFilter: const ColorFilter.mode(
                        AppColors.greyScale_400, BlendMode.srcIn),
                  ),
                  4.horizontalSpace,
                  Text(
                   countText,
                    style: AppTextStyles.greyScale400s12W500,
                  ),
                ],
              ),
            ),
          );
  }
}