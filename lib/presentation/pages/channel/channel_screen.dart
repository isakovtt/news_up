import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants/app_assets.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_text_styles.dart';
import '../../../utils/helpers/navigate.dart';
import '../../widgets/global_progress_indicator.dart';
import '../bottom_navigation/navigation_screen.dart';

class ChannelScreen extends StatelessWidget {
  const ChannelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Channel',
            style: AppTextStyles.greyScale900s16W700,
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
          leadingWidth: 62,
          leading: Center(
            child: GestureDetector(
              onTap: () {
                Navigate.navigatePop(
                  context,
                  const NavigationScreen(),
                );
              },
              child: SvgPicture.asset(
                AppAssets.arrowNarrowLeft,
                height: 32.h,
                width: 32.w,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            24.verticalSpace,
            Center(
              child: CircleAvatar(
                radius: 44.r,
                backgroundColor: AppColors.greyScale_300,
                child: ClipOval(
                  child: StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('channels')
                        .snapshots(),
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
            ),
          ],
        ));
  }
}
