import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/cubits/write_news/write_news_cubit.dart';
import 'package:newsup_app/presentation/pages/edit_profile/edit_profile_screen.dart';
import 'package:newsup_app/presentation/pages/write_news/write_news_screen.dart';
import 'package:newsup_app/presentation/widgets/inner_colorless_button.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';
import 'package:newsup_app/utils/helpers/navigate.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_texts.dart';
import '../../../widgets/inside_colored_button.dart';

class ProfileButtons extends StatelessWidget {
  const ProfileButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h24,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InnerColorlessButton(
            onTap: () => Navigate.navigatePush(
              context,
              const EditProfileScreen(),
            ),
            text: AppTexts.editProfile,
            height: 48.h,
            width: 159.w,
          ),
          8.horizontalSpace,
          InsideColoredButton(
            onTap: () => Navigate.navigatePush(
              context,
              BlocProvider(
                create: (context) => WriteNewsCubit(),
                child: const WriteNewsScreen(),
              ),
            ),
            height: 48.h,
            width: 159.w,
            buttonColor: AppColors.primaryBase,
            text: AppTexts.addStory,
          )
        ],
      ),
    );
  }
}
