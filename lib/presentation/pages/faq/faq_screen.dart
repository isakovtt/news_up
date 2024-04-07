import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/presentation/pages/faq/widgets/faq_app_bar.dart';
import 'package:newsup_app/presentation/pages/faq/widgets/faq_description.dart';
import 'package:newsup_app/presentation/pages/faq/widgets/faq_types.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';
import 'package:newsup_app/utils/constants/app_text_styles.dart';
import '../../../utils/constants/app_texts.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FaqAppBar(),
      body: ListView(
        children: [
          const FaqDescription(),
          24.verticalSpace,
          Padding(
            padding: AppPaddings.h24,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppTexts.popularQuestion,
                  style: AppTextStyles.secondBase500S14W700,
                ),
                16.verticalSpace,
                const FaqTypes(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
