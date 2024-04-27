import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../cubits/write_news/write_news_cubit.dart';
import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_box_decorations.dart';

class WriteNewsImageEditButton extends StatelessWidget {
  const WriteNewsImageEditButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<WriteNewsCubit>();

    return SizedBox(
      height: 38,
      width: 66,
      child: DecoratedBox(
        decoration: AppBoxDecorations.primary200C24,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              child: SvgPicture.asset(
                AppAssets.pencil,
                height: 24.h,
              ),
              onTap: () async {
                final XFile? xFile = await ImagePicker().pickImage(
                  source: ImageSource.gallery,
                );
                cubit.loadImage(File(xFile!.path));
              },
            ),
            SvgPicture.asset(
              AppAssets.dotsVertical,
              height: 20.h,
            )
          ],
        ),
      ),
    );
  }
}
