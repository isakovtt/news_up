import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:newsup_app/utils/constants/app_text_styles.dart';

import '../../../../utils/constants/app_colors.dart';

class PreviewCips extends StatefulWidget {
  const PreviewCips({super.key});

  @override
  State<PreviewCips> createState() => _PreviewCipsState();
}

class _PreviewCipsState extends State<PreviewCips> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        for (var chipText in myChips)
          Padding(
            padding: const EdgeInsets.only(left: 2, right: 3),
            child: Chip(
              deleteIcon: const Padding(
                padding: EdgeInsets.only(left: 2),
                child: Icon(
                  Icons.close,
                  color: AppColors.errorDark,
                ),
              ),
              deleteButtonTooltipMessage: 'delete',
              labelPadding: const EdgeInsets.only(left: 1),
              onDeleted: () {
                setState(() {
                  myChips.remove(chipText);
                });
              },
              label: Text(
                chipText,
                style: const TextStyle(color: AppColors.primaryBase),
              ),
              backgroundColor: AppColors.primary_100,
              shadowColor: AppColors.greyScale_200,
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
              avatar: const Text(
                '#',
                style: TextStyle(
                  color: AppColors.primaryBase,
                ),
              ),
            ),
          ),
        GestureDetector(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 60.w,
              height: 30.h,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.primaryBase),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Text('+add'),
              ),
            ),
          ),
          onTap: () {
            Center(
              child: PopupMenuButton(
                elevation: 3,
                offset: const Offset(100, 0),
                clipBehavior: Clip.antiAlias,
                itemBuilder: (context) {
                  return List.generate(myChips.length, (index) {
                    final chipText = myChips[index];
                    return PopupMenuItem(
                      value: chipText,
                      child: Text(chipText),
                    );
                  });
                },
                onSelected: (selectedValue) {
                  chipList.add(selectedValue);

                  setState(() {});
                },
              ),
            );
            showMenu(
              elevation: 5,
              shape: Border.all(width: 2, color: AppColors.primary_100),
              context: context,
              position: RelativeRect.fromLTRB(15.w,
                  MediaQuery.of(context).size.height - 100.h, 15.w, 100.h),
              clipBehavior: Clip.hardEdge,
              constraints: BoxConstraints.expand(height: 300.h, width: 347.w),
              color: AppColors.white,
              items: chipList.map((chipText) {
                return PopupMenuItem(
                  value: chipText,
                  child: Center(
                      child: Text(
                    chipText,
                    style: AppTextStyles.greyScale900s14W700,
                  )),
                );
              }).toList(),
            ).then(
              (selectedValue) {
                if (selectedValue != null) {
                  myChips.add(selectedValue);
                  Hive.box('writeNews').put('tags', myChips);
                  // chipList.remove(selectedValue);
                  setState(() {});
                }
              },
            );
          },
        ),
      ],
    );
  }
}

final List chipList = [
  'crypto',
  'business',
  'art',
  'design',
  'technology',
  'NFT',
  'health',
  'sport',
  'today',
];
final List myChips = [];
