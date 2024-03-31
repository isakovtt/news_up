import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class GlobalPageIndicator extends StatelessWidget {
  const GlobalPageIndicator({super.key, required this.controller});

  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 2,
      effect: ExpandingDotsEffect(
        dotHeight: 4.h,
        dotWidth: 12.w,
      ),
    );
  }
}
