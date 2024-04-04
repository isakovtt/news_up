import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/utils/constants/app_assets.dart';

class DetailNewsImage extends StatelessWidget {
  const DetailNewsImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.w,
      height: 208.h,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(18),
        ),
      ),
      child: Image.asset(
        AppAssets.detailImage_1,
        fit: BoxFit.cover,
        filterQuality: FilterQuality.high,
      ),
    );
  }
}
