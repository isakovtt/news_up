import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../widgets/global_shadow_box.dart';
import '../../../utils/constants/app_assets.dart';
import '../../../utils/constants/app_paddings.dart';
import '../../../utils/constants/app_text_styles.dart';

class ListRecentItem extends StatelessWidget {
  const ListRecentItem(
      {super.key,
      required this.image,
      required this.category,
      required this.description, this.onTap});

  final String image;
  final String category;
  final String description;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 28),
      child: GestureDetector(onTap: onTap,
        child: GlobalShadowBox(
          child: Padding(
            padding: AppPaddings.lr16t20b20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  filterQuality: FilterQuality.high,
                ),
                12.verticalSpace,
                Row(
                  children: [
                    SvgPicture.asset(
                      AppAssets.lockVector,
                    ),
                    8.horizontalSpace,
                    Text(
                      category,
                      style: AppTextStyles.greyScale900s16W700,
                    ),
                    const Spacer(),
                    SvgPicture.asset(AppAssets.dotsGrey),
                  ],
                ),
                8.verticalSpace,
                Text(
                  description,
                  style: AppTextStyles.greyScale400s12W400,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
