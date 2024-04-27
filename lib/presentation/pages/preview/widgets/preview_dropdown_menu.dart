import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:newsup_app/data/models/dropdown_menu_list.dart';

import '../../../../utils/constants/app_box_decorations.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_texts.dart';

class PreviewDropdownMenu extends StatelessWidget {
  const PreviewDropdownMenu({super.key, this.onChanged});

  final Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          isExpanded: true,
          hint: Text(
            AppTexts.selectCategory,
            style: AppTextStyles.greyScale900s14W500,
          ),
          items: DropdownMenuList.items
              .map((String item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: AppTextStyles.greyScale900s14W500,
                    ),
                  ))
              .toList(),
          value: DropdownMenuList.selectedValue,
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
