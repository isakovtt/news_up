import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_box_decorations.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';

class HomeLiveView extends StatelessWidget {
  const HomeLiveView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h24,
      child: Container(
        width: 327.w,
        height: 208.h,
        clipBehavior: Clip.antiAlias,
        decoration: AppBoxDecorations.circular18,
        child: Stack(
          alignment: Alignment.center,
          fit: StackFit.expand,
          children: [
            Image.asset(
              AppAssets.homeLivePicture,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
            ),
            Positioned(
              left: 24,
              bottom: 43,
              child: SizedBox(
                width: 279.w,
                height: 52.h,
                child: Text(
                  'Ukraine conflict: Kyiv brace for a Russian assault',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.whiteS16W700,
                ),
              ),
            ),
            Positioned(
                left: 16,
                top: 16,
                width: 71.w,
                height: 26.h,
                child: SvgPicture.asset(
                  AppAssets.liveVector,
                ))
          ],
        ),
      ),
    );
  }
}
