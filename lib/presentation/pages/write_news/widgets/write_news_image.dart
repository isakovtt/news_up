import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../cubits/write_news/write_news_cubit.dart';
import '../../../../utils/constants/app_paddings.dart';
import 'write_news_image_edit_button.dart';

class WriteNewsImage extends StatelessWidget {
  const WriteNewsImage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<WriteNewsCubit>();

    return Column(
      children: [
        32.verticalSpace,
        StreamBuilder(
          stream: cubit.getImageStream,
          builder: (context, snapshot) {
            if (!snapshot.hasData || snapshot.data == null) {
              return const SizedBox.shrink();
            }
            return Padding(
              padding: AppPaddings.h24,
              child: Stack(
                children: [
                  Image(
                    fit: BoxFit.cover,
                    width: double.maxFinite,
                    filterQuality: FilterQuality.high,
                    image: FileImage(
                      snapshot.data!,
                    ),
                  ),
                  const Positioned(
                    right: 12,
                    top: 12,
                    child: WriteNewsImageEditButton(),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
