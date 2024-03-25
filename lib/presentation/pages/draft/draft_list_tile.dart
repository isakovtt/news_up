import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsup_app/utils/constants/app_assets.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';
import 'package:newsup_app/utils/constants/app_text_styles.dart';

class DraftListTile extends StatelessWidget {
  const DraftListTile(
      {super.key,
      required this.image,
      required this.editTimeText,
      required this.headlinaText});

  final String image;
  final String editTimeText;
  final String headlinaText;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 12,
      contentPadding: AppPaddings.h24,
      leading: Image.asset(image),
      title: Row(
        children: [
          Text(
            editTimeText,
            style: AppTextStyles.greyScale400s12W500,
          ),
          const Spacer(),
          SvgPicture.asset(
            AppAssets.dotsGrey,
          ),
        ],
      ),
      subtitle: Text(
        headlinaText,
        style: AppTextStyles.greyScale900s14W700,
      ),
    );
  }
}
