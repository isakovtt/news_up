import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ExploreShimmer extends StatelessWidget {

  const ExploreShimmer({ super.key });

   @override
   Widget build(BuildContext context) {
       return ClipRRect(borderRadius: BorderRadius.circular(18),
      child: SizedBox(
        height: 85.h,
        width: 335,
        child: Shimmer.fromColors(
          period: const Duration(seconds: 2),
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 1,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (_, __) => Container(
              height: 85.h,
              width: 335.w,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}