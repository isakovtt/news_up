import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/dropdown_menu_list.dart';
import '../../../utils/constants/app_paddings.dart';
import '../../widgets/global_view.dart';
import 'widgets/preview_app_bar.dart';
import 'widgets/preview_card_items.dart';
import 'widgets/preview_chip_tags_title.dart';
import 'widgets/preview_cips.dart';
import 'widgets/preview_dropdown_menu.dart';
import 'widgets/preview_dropdown_menu_title.dart';
import 'widgets/preview_publish_button.dart';

class PreviewScreen extends StatefulWidget {
  const PreviewScreen({super.key});

  @override
  State<PreviewScreen> createState() => _PreviewScreenState();
}

class _PreviewScreenState extends State<PreviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreviewAppBar(),
        body: Padding(
          padding: AppPaddings.h24,
          child: GlobalView(children: [
            12.verticalSpace,
            const PreviewCardItems(),
            32.verticalSpace,
            const PreviewChipTagsTitle(),
            16.verticalSpace,
            const PreviewCips(),
            24.verticalSpace,
            const PreviewDropdownMenuTitle(),
            16.verticalSpace,
            PreviewDropdownMenu(
              onChanged: (String? value) => setState(
                () => DropdownMenuList.selectedValue = value,
              ),
            ),
            28.verticalSpace,
            const PreviewPublishButton(),
          ]),
        ));
  }
}
