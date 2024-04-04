import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';
import 'package:newsup_app/utils/constants/app_text_styles.dart';

class DetailNewsDescription extends StatelessWidget {
  const DetailNewsDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: AppPaddings.lr24t16,
          child: Text(
            'Bitcoin\'s next bull run may not happen until late 2024 or early 2025, Huobi\'s co-founder has claimed.',
            style: AppTextStyles.greyScale500s14W500,
          ),
        ),
        12.verticalSpace,
        Padding(
          padding: AppPaddings.h24,
          child: Text(
            'Other crypto analysts had previously argued that halving events were beginning to have less of an effect on Bitcoin\'s value — principally because most of the 21 million BTC that will ever exist is now in circulation.',
            style: AppTextStyles.greyScale500s14W500,
          ),
        ),
        12.verticalSpace,
        Padding(
          padding: AppPaddings.h24,
          child: Text(
            'According to the co-founder of Huobi, one of the leading cryptocurrency exchanges in the world, the next major surge in Bitcoin\'s value, often referred to as a \'bull run\', might not be on the horizon anytime soon. While the cryptocurrency market is known for its unpredictability and volatile nature, the co-founder suggests that enthusiasts and investors might have to exercise patience',
            style: AppTextStyles.greyScale500s14W500,
          ),
        )
      ],
    );
  }
}
