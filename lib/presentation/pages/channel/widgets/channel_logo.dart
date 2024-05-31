import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/presentation/widgets/global_progress_indicator.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';

class ChannelLogo extends StatelessWidget {
  const ChannelLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        radius: 44.r,
        backgroundColor: AppColors.greyScale_300,
        child: ClipOval(
          child: StreamBuilder(
            stream:
                FirebaseFirestore.instance.collection('channels').snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const GlobalProgressIndicator();
              }
              final channels = snapshot.data!.docs.first;
              return Image.network(
                channels['logo'],
                width: 88.w,
                height: 88.h,
                fit: BoxFit.cover,
              );
            },
          ),
        ),
      ),
    );
  }
}
