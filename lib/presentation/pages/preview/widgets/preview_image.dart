import 'package:flutter/material.dart';
import 'package:newsup_app/utils/constants/app_assets.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';

class PreviewImage extends StatelessWidget {
  const PreviewImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.lrt16,
      child: Image.asset(
        AppAssets.previewImage,
        fit: BoxFit.cover,
        width: double.infinity,
        filterQuality: FilterQuality.high,
      ),
    );
  }
}
