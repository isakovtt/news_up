import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsup_app/cubits/write_news/write_news_cubit.dart';

import '../../../../utils/constants/app_texts.dart';
import '../../../widgets/inside_colored_button.dart';

class PreviewPublishButton extends StatelessWidget {
  const PreviewPublishButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<WriteNewsCubit>();
    return BlocBuilder<WriteNewsCubit, WriteNewsState>(
      builder: (context, state) {
        return InsideColoredButton(
          text: AppTexts.publish,
          width: double.infinity,
          onTap: () {
            cubit.sendData();
          },
        );
      },
    );
  }
}
