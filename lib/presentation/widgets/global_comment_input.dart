import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsup_app/cubits/comment/comment_cubit.dart';
import 'package:newsup_app/utils/constants/app_assets.dart';
import 'package:newsup_app/utils/constants/app_color_filters.dart';

import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_text_styles.dart';
import '../../utils/constants/app_texts.dart';

class GlobalCommentInput extends StatelessWidget {
  const GlobalCommentInput(
      {super.key,
      this.height,
      this.hintText,
      this.suffixIcon,
      required this.postId});

  final double? height;
  final String? hintText;
  final String postId;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CommentCubit>();
    return SizedBox(
      height: height ?? 40.h,
      child: BlocBuilder<CommentCubit, CommentState>(
        builder: (context, state) {
          if (state is CommentSuccess) {
            cubit.commentController.clear();
          }
          return TextFormField(
            controller: cubit.commentController,
            style: AppTextStyles.greyScale900s14W700,
            decoration: InputDecoration(
              suffixIcon: suffixIcon ??
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GestureDetector(
                      onTap: () {
                        cubit.addComment(postId);
                      },
                      child: SvgPicture.asset(
                        colorFilter: AppColorFilters.primaryBaseSrcIn,
                        AppAssets.send_2,
                      ),
                    ),
                  ),
              filled: true,
              fillColor: AppColors.greyScale_50,
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(1000),
                ),
              ),
              hintText: hintText ?? AppTexts.writeComment,
              hintStyle: AppTextStyles.greyScale400s12W400,
            ),
          );
        },
      ),
    );
  }
}
