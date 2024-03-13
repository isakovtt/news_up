import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class GlobalPageIndicator extends StatelessWidget {
  const GlobalPageIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final _pageController = PageController();

    return SmoothPageIndicator(
      controller: _pageController,
      count: 2,
      effect: ExpandingDotsEffect(
        dotHeight: 4.h,
        dotWidth: 12.w,
      ),
    );
  }
}
