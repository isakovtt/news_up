import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../cubits/write_news/write_news_cubit.dart';
import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/helpers/navigate.dart';
import '../../../widgets/global_next_button.dart';
import '../../draft/draft_screen.dart';
import '../../preview/preview_screen.dart';
import 'write_news_bottom_item.dart';

class WriteNewsFooter extends StatelessWidget {
  const WriteNewsFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<WriteNewsCubit>();
    return Padding(
      padding: AppPaddings.lr24b12,
      child: Row(
        children: [
          const WriteNewsBottomItem(
            icon: AppAssets.letterCase,
          ),
          8.horizontalSpace,
          WriteNewsBottomItem(
            icon: AppAssets.list,
            onTap: () {
              Navigate.navigatePush(
                context,
                const DraftScreen(),
              );
            },
          ),
          8.horizontalSpace,
          WriteNewsBottomItem(
            icon: AppAssets.photo,
            onTap: () async {
              final XFile? xFile = await ImagePicker().pickImage(
                source: ImageSource.gallery,
              );
              cubit.loadImage(File(xFile!.path));
            },
          ),
          const Spacer(),
          GlobalNextButton(
            onTap: () {
              if (Hive.box('writeNews').isNotEmpty) {
                Navigate.navigatePush(
                  context,
                  BlocProvider(
                    create: (context) => WriteNewsCubit(),
                    child: const PreviewScreen(),
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Add parameters',
                    ),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
