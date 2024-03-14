import 'package:flutter/material.dart';

import '../../../../utils/constants/app_text_styles.dart';

class HaveAccountButton extends StatelessWidget {
  const HaveAccountButton(
      {super.key, this.onTap, required this.text, required this.title});

  final String text;
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: AppTextStyles.greyScale900s14W400,
          ),
          Text(
            title,
            style: AppTextStyles.primaryBaseS14W700,
          )
        ],
      ),
    );
  }
}
