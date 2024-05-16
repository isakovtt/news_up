import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar(
      {super.key, required this.image, this.backgroundColor});

  final String image;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.network(
        image,
        fit: BoxFit.cover,
        height: 48.h,
        width: 48.w,
      ),
    );
  }
}
