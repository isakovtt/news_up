import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../../../data/models/dropdown_menu_list.dart';
import '../../../../utils/constants/app_box_decorations.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';

class PreviewChannelsDropdownMenu extends StatelessWidget {
  const PreviewChannelsDropdownMenu({super.key, this.onChanged});

  final Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          isExpanded: true,
          hint: Text(
            'Select channels',
            style: AppTextStyles.greyScale900s14W500,
          ),
          items: DropdownMenuList.channelsItems
              .map((String item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: AppTextStyles.greyScale900s14W500,
                    ),
                  ))
              .toList(),
          value: DropdownMenuList.selectedChannelsValue,
          onChanged: onChanged,
          buttonStyleData: ButtonStyleData(
            decoration: AppBoxDecorations.greyScale50R1000,
            elevation: 5,
            padding: AppPaddings.h16,
            height: 56,
          ),
          menuItemStyleData: const MenuItemStyleData(
            height: 40,
          ),
        ),
      ),
    );
  }
}
