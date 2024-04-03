import 'package:flutter/material.dart';
import 'package:newsup_app/presentation/widgets/global_layouts.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';
import 'package:newsup_app/utils/constants/app_texts.dart';

class TopicLayouts extends StatelessWidget {
  const TopicLayouts({super.key});

  @override
  Widget build(BuildContext context) {
    return  GlobalLayouts(
      text: AppTexts.latest,
      padding: AppPaddings.h24
    );
  }
}
