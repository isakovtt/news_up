import 'package:flutter/material.dart';
import 'package:newsup_app/presentation/widgets/global_view_more.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';
import 'package:newsup_app/utils/constants/app_texts.dart';

class ProfileViewMore extends StatelessWidget {
  const ProfileViewMore({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalViewMore(
      text: AppTexts.yourStories,
      padding: AppPaddings.h24,
    );
  }
}
