import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';
import 'package:shimmer/shimmer.dart';

class HomeShimmer extends StatelessWidget {
  const HomeShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75.h,
      child: Shimmer.fromColors(
        period: const Duration(seconds: 2),
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: ListView.builder(
          padding: AppPaddings.h24,
          scrollDirection: Axis.vertical,
          itemCount: 5,
          
          itemBuilder: (_, __) => Padding(
            padding: EdgeInsets.only(bottom: 16.w),
            child: Container(
              height: 75.h,
              // width: 54.w,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
