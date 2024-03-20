import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/utils/constants/app_box_decorations.dart';

class GlobalCircleRectangle extends StatelessWidget {
  const GlobalCircleRectangle({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 27.h,
      width: 73.w,
      child: DecoratedBox(
        decoration: AppBoxDecorations.greyScale50R1000,
        child: child,
      ),
    );
  }
}
