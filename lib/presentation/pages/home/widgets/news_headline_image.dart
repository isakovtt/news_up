import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsHeadlineImage extends StatelessWidget {
  const NewsHeadlineImage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(18)),
      ),
      child: Image.asset(
        width: 80.r,
        height: 80.r,
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}
