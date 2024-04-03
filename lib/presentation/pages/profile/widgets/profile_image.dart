import 'package:flutter/material.dart';
import 'package:newsup_app/presentation/widgets/custom_circle_avatar.dart';
import 'package:newsup_app/utils/constants/app_assets.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: const CustomCircleAvatar(
        image: AppAssets.authorImage_6,
      ),
    );
  }
}
