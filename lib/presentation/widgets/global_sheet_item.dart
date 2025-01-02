import 'package:flutter/material.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';

import '../../utils/constants/app_text_styles.dart';
import 'global_colorless_circle.dart';

class GlobalSheetItem extends StatefulWidget {
  const GlobalSheetItem({super.key, required this.text,  this.onTapChanged});

  final String text;
  final ValueChanged<bool>? onTapChanged;

  @override
  State<GlobalSheetItem> createState() => _GlobalSheetItemState();
}

class _GlobalSheetItemState extends State<GlobalSheetItem> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          widget.text,
          style: AppTextStyles.greyScale900s16W500,
        ),
        const Spacer(),
        GlobalColorlessCircle(
          onTap: () {
            setState(() {
              isTapped = !isTapped;
            });
            widget.onTapChanged!(isTapped);
          },
          child: isTapped
              ? const Icon(Icons.check_circle, color: AppColors.primaryBase)
              : const Icon(Icons.add_circle_outline_sharp),
        ),
      ],
    );
  }
}
