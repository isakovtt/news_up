import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constants/app_box_decorations.dart';

class ListTileImage extends StatelessWidget {
  const ListTileImage(
      {super.key,
      required this.image,
      this.width,
      this.height,
      this.decoration});

  final String image;
  final double? width;
  final double? height;
  final Decoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: decoration ?? AppBoxDecorations.circular18,
      child: Image.file(
        File(image),
        width: width ?? 80.r,
        height: height ?? 80.r,
        fit: BoxFit.cover,
      ),
    );
  }
}
