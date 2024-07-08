import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_colors.dart';

class ChannelLogo extends StatelessWidget {
  const ChannelLogo({super.key, required this.channel});
  final QueryDocumentSnapshot<Map<String, dynamic>> channel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        radius: 44.r,
        backgroundColor: AppColors.greyScale_300,
        child: ClipOval(
          child: Image.network(
           channel['logo'],
            width: 88.w,
            height: 88.h,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
