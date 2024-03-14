import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_paddings.dart';

class HomeLiveView extends StatelessWidget {
  const HomeLiveView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.r24,
      child: Container(
        width: 327.w,
        height: 208.h,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(18)),
        ),
        child: Image.asset(
          AppAssets.homeLivePicture,
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
        ),
      ),
    );
  }
}
