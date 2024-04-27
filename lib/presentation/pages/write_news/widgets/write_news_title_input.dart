import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/cubits/write_news/write_news_cubit.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';
import 'package:newsup_app/utils/constants/app_text_styles.dart';

class WriteNewsTitleInput extends StatelessWidget {
  const WriteNewsTitleInput({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<WriteNewsCubit>();

    return Padding(
      padding: AppPaddings.h24,
      child: TextFormField(
        maxLines: 2,
        controller: cubit.titleController,
        style: AppTextStyles.greyScale900s20W700,
        cursorHeight: 32.h,
        autocorrect: false,
        decoration: InputDecoration.collapsed(
          hintText: 'Title goes here',
          hintStyle: AppTextStyles.greyScale300s20W700,
        ),
      ),
    );
  }
}
