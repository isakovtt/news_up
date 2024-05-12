import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:newsup_app/presentation/pages/preview/widgets/preview_cips.dart';

import '../../../../cubits/write_news/write_news_cubit.dart';
import '../../../../data/models/dropdown_menu_list.dart';
import '../../../../utils/constants/app_texts.dart';
import '../../../../utils/helpers/navigate.dart';
import '../../../widgets/global_progress_indicator.dart';
import '../../../widgets/inside_colored_button.dart';
import '../../bottom_navigation/navigation_screen.dart';

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
            onTap: () async{
              cubit.sendData();
              await Hive.box('writeNews').clear();
              DropdownMenuList.selectedCategoriesValue = null;
              DropdownMenuList.selectedChannelsValue = null;
              myChips.clear();
              Navigate.navigateReplacePush(
                context,
                const NavigationScreen(),
              );
            },
          );
        }
      },
    );
  }
}
