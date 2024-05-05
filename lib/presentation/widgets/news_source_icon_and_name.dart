import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constants/app_box_decorations.dart';
import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_text_styles.dart';

class NewsSourceIconAndName extends StatelessWidget {
  const NewsSourceIconAndName(
      {super.key,
      required this.sourceIcon,
      required this.sourceName,
      this.style,
      this.width,
      this.liveIcon = false});

  final String sourceIcon;
  final String sourceName;
  final TextStyle? style;
  final double? width;
  final bool? liveIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20.w,
          height: 20.h,
          child: DecoratedBox(
            decoration: AppBoxDecorations.greyScale100R1000,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (liveIcon == false) ...[
                    ClipOval(
                      child: Image.network(
                        sourceIcon,
                        width: 13.w,
                        height: 13.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                  if (liveIcon == true) ...[
                    CircleAvatar(
                      radius: 10.r,
                      backgroundColor: AppColors.greyScale_50,
                      child: const Icon(
                        Icons.abc,
                        color: AppColors.errorLight,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
        6.horizontalSpace,
        SizedBox(
          width: width ?? 90.w,
          child: Text(
            sourceName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: style ?? AppTextStyles.greyScale400s12W400,
          ),
        ),
      ],
    );
  }
}
