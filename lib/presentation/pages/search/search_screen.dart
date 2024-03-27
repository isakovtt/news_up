import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants/app_assets.dart';
import '../../../utils/constants/app_box_decorations.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_text_styles.dart';
import '../../widgets/breaking_news_view_more.dart';
import '../home/widgets/channels.dart';
import '../home/widgets/home_live_view.dart';
import '../home/widgets/horizontal_dots.dart';
import 'search_app_bar.dart';
import 'search_chips.dart';
import 'search_layouts.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SearchAppBar(),
      body: SingleChildScrollView(
        child: Column(children: [
          const SearchChips(),
          24.verticalSpace,
          const BreakingNewsViewMore(),
          24.verticalSpace,
          const HomeLiveView(),
          32.verticalSpace,
          const Channels(),
          24.verticalSpace,
          const SearchLayouts(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 4,
              scrollDirection: Axis.vertical,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 200,
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemBuilder: (context, index) {
                return ColoredBox(
                  color: AppColors.greyScale_300,
                  child: SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppAssets.girdViewImage_1,
                          fit: BoxFit.cover,
                          height: 80,
                          width: double.infinity,
                          filterQuality: FilterQuality.high,
                        ),
                        16.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20.w,
                              height: 20.h,
                              child: DecoratedBox(
                                decoration: AppBoxDecorations.greyScale100R1000,
                                child: Center(
                                  child: SvgPicture.asset(
                                    AppAssets.cnnVector,
                                    width: 11.67.w,
                                  ),
                                ),
                              ),
                            ),
                            4.horizontalSpace,
                            SizedBox(
                              width: 90.w,
                              child: Text(
                                'CNN News',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: AppTextStyles.greyScale400s12W400,
                              ),
                            ),
                            const Spacer(),
                            const HorizontalDots(),
                          ],
                        ),
                        6.verticalSpace,
                        Text(
                          'Innovations in Business: The Future of Commerce',
                          style: AppTextStyles.greyScale900s14W500
                              .copyWith(fontSize: 13.sp),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                        12.verticalSpace,
                        Row(
                          children: [
                            Text(
                              'Business',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: AppTextStyles.primaryBaseS12W500,
                            ),
                            const Spacer(),
                            SvgPicture.asset(AppAssets.clockVector),
                            4.horizontalSpace,
                            Text(
                              '10 min',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: AppTextStyles.greyScale400s12W400,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
