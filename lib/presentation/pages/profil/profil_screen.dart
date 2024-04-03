import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../data/models/news_headline_model.dart';
import '../../../data/models/profile_stories_model.dart';
import '../../../utils/constants/app_assets.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_paddings.dart';
import '../../../utils/constants/app_text_styles.dart';
import '../../../utils/constants/app_texts.dart';
import '../../../utils/helpers/navigate.dart';
import '../../widgets/global_divider.dart';
import '../../widgets/global_vertical_divider.dart';
import '../../widgets/global_view_more.dart';
import '../../widgets/horizontal_dots.dart';
import '../../widgets/list_tile_cotegory_name.dart';
import '../../widgets/list_tile_image.dart';
import '../../widgets/list_tile_time_and_comment.dart';
import '../../widgets/list_tile_title.dart';
import '../detail/detail_news_screen.dart';
import '../onboarding/widgets/onboard_get_started_button.dart';
import '../onboarding/widgets/onboard_login_button.dart';
import 'profil_app_bar.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const ProfilAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: AppPaddings.h24,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                8.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 24.r,
                      backgroundColor: AppColors.greyScale_200,
                      child: Image.asset(
                        AppAssets.authorImage_6,
                        fit: BoxFit.cover,
                      ),
                    ),
                    54.horizontalSpace,
                    Column(
                      children: [
                        Text(
                          '42',
                          style: AppTextStyles.greyScale900s14W700,
                        ),
                        Text(
                          'Stories',
                          style: AppTextStyles.greyScale400s12W400,
                        )
                      ],
                    ),
                    const GlobalVerticalDivider(),
                    Column(
                      children: [
                        Text(
                          '213K',
                          style: AppTextStyles.greyScale900s14W700,
                        ),
                        Text(
                          'Followers',
                          style: AppTextStyles.greyScale400s12W400,
                        )
                      ],
                    ),
                    const GlobalVerticalDivider(),
                    Column(
                      children: [
                        Text(
                          '34',
                          style: AppTextStyles.greyScale900s14W700,
                        ),
                        Text(
                          'Following',
                          style: AppTextStyles.greyScale400s12W400,
                        )
                      ],
                    ),
                  ],
                ),
                23.verticalSpace,
                Row(
                  children: [
                    Text(
                      'Michella Barkin',
                      style: AppTextStyles.greyScale900s16W700,
                    ),
                    4.horizontalSpace,
                    SvgPicture.asset(
                      AppAssets.checkVerified_02,
                    ),
                  ],
                ),
                4.verticalSpace,
                Text(
                  '@barkin_michella',
                  style: AppTextStyles.greyScale400s12W500,
                ),
                4.verticalSpace,
                Text(
                  textAlign: TextAlign.start,
                  'Design, Productivity, and Creation. Learn everything you need to improve your design skills.',
                  style: AppTextStyles.greyScale400s14W400,
                ),
                24.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InnerColorlessButton(
                      text: AppTexts.editProfile,
                      height: 48.h,
                      width: 159.w,
                    ),
                    8.horizontalSpace,
                    InsideColoredButton(
                      height: 48.h,
                      width: 159.w,
                      color: AppColors.primaryBase,
                      text: AppTexts.addStory,
                    )
                  ],
                ),
                24.verticalSpace,
                GlobalViewMore(
                  text: AppTexts.yourStories,
                  padding: AppPaddings.all0,
                ),
                16.verticalSpace,
                ListView.separated(
                  padding: AppPaddings.b16,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: newsheadline.length,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => 16.verticalSpace,
                  itemBuilder: (context, index) {
                    final stories = profileStories[index];
                    return ListTile(
                      minVerticalPadding: 0,
                      contentPadding: AppPaddings.all0,
                      minLeadingWidth: 0,
                      title: Column(
                        children: [
                          Row(
                            children: [
                              ListTileImage(image: stories.image),
                              16.horizontalSpace,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      ListTileCotegoryName(
                                          text: stories.categoryText),
                                      20.horizontalSpace,
                                      const HorizontalDots(),
                                    ],
                                  ),
                                  6.verticalSpace,
                                  GestureDetector(
                                    onTap: () {
                                      Navigate.navigatePush(
                                        context,
                                        const DetailNewsScreen(),
                                      );
                                    },
                                    child: ListTileTitle(
                                        text: stories.headlineText),
                                  ),
                                  12.verticalSpace,
                                  ListTileTimeAndComment(
                                    hasSource: true,
                                    sourceIcon: stories.sourceIcon,
                                    sourceName: stories.sourceName,
                                    clockText: stories.timeText,
                                    commentCountText: stories.commentText,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          16.verticalSpace,
                          const GlobalDivider(),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
