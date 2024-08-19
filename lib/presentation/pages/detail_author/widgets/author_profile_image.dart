import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/utils/constants/app_assets.dart';

class AuthorProfileImage extends StatelessWidget {
  const AuthorProfileImage({super.key, this.image});
  final String? image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      // child:  CustomCircleAvatar(
      //   // image: AppAssets.authorImage_1,
      //   image:  image,
      // ),
      child: ClipOval(
        child: Image.network(
          alignment: Alignment.bottomCenter,
          image ?? AppAssets.netwokProfileAvatar,
          height: 48.h,
          width: 48.w,
          filterQuality: FilterQuality.high,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
