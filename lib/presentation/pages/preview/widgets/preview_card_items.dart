import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../utils/constants/app_paddings.dart';
import '../../../widgets/global_shadow_box.dart';
import 'preview_title.dart';

class PreviewCardItems extends StatelessWidget {
  const PreviewCardItems({super.key});

  @override
  Widget build(BuildContext context) {
    final box = Hive.box('writeNews');
    return GlobalShadowBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: AppPaddings.lrt16,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.file(
                filterQuality: FilterQuality.high,
                File(
                  box.get('photo'),
                ),
              ),
            ),
          ),
          22.verticalSpace,
          PreviewTitle(
            text: box.get('title'),
          ),
          30.verticalSpace,
        ],
      ),
    );
  }
}
