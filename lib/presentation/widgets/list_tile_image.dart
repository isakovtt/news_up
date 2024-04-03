import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/utils/constants/app_box_decorations.dart';

class ListTileImage extends StatelessWidget {
  const ListTileImage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: AppBoxDecorations.circular18,
      child: Image.asset(
        image,
        width: 80.r,
        height: 80.r,
        fit: BoxFit.cover,
      ),
    );
  }
}
