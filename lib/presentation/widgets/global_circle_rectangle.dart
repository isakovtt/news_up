import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/utils/constants/app_box_decorations.dart';

class GlobalCircleRectangle extends StatelessWidget {
  const GlobalCircleRectangle({super.key, this.child, this.width, this.height});

  final Widget? child;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 27.h,
      width: width ?? 84,
      child: DecoratedBox(
        decoration: AppBoxDecorations.greyScale50R1000,
        child: child,
      ),
    );
  }
}
