import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'preview_image.dart';
import 'preview_title.dart';
import '../../../widgets/global_shadow_box.dart';

class PreviewCardItems extends StatelessWidget {
  const PreviewCardItems({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalShadowBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const PreviewImage(),
          22.verticalSpace,
          const PreviewTitle(),
          30.verticalSpace,
        ],
      ),
    );
  }
}
