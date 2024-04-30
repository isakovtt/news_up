import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileStoriesImage extends StatelessWidget {
  const ProfileStoriesImage({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Image.file(
        fit: BoxFit.cover,
        File(image),
        height: 80.h,
        width: 80.w,
      ),
    );
  }
}
