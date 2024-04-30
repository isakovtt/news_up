import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../cubits/write_news/write_news_cubit.dart';
import '../../../../utils/constants/app_texts.dart';
import '../../../../utils/helpers/navigate.dart';
import '../../../widgets/global_progress_indicator.dart';
import '../../../widgets/inside_colored_button.dart';
import '../../profile/profile_screen.dart';

class PreviewPublishButton extends StatelessWidget {
  const PreviewPublishButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<WriteNewsCubit>();
    return BlocConsumer<WriteNewsCubit, WriteNewsState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is WriteNewsLoading) {
          return const GlobalProgressIndicator();
        } else {
          return InsideColoredButton(
            text: AppTexts.publish,
            width: double.infinity,
            onTap: () {
              cubit.sendData();
              Navigate.navigateReplacePush(
                context,
                const ProfileScreen(),
              );
            },
          );
        }
      },
    );
  }
}
