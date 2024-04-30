import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsup_app/cubits/write_news/write_news_cubit.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';
import 'package:newsup_app/utils/constants/app_text_styles.dart';

class WriteNewsSubtitleInput extends StatelessWidget {
  const WriteNewsSubtitleInput({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<WriteNewsCubit>();

    return Padding(
      padding: AppPaddings.h24,
      child: Form(
        child: TextFormField(
          validator: (value) => cubit.validateSubtitle,
          maxLines: 12,
          controller: cubit.subtitleController,
          style: AppTextStyles.greyScale500s14W500,
          decoration: InputDecoration.collapsed(
            hintText: 'Tap here to continue...',
            hintStyle: AppTextStyles.greyScale300s14W400,
          ),
        ),
      ),
    );
  }
}
