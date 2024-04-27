import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            padding: const EdgeInsets.only(left: 6),
            child: Chip(
              label: Text(
                chipText,
                style: const TextStyle(color: AppColors.primaryBase),
              ),
              backgroundColor: AppColors.primary_100,
              shadowColor: AppColors.greyScale_200,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
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
            PopupMenuButton(
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
            );
            showMenu(
              context: context,
              position: const RelativeRect.fromLTRB(24, 100, 10, 100),
              items: chipList.map((chipText) {
                return PopupMenuItem(
                  value: chipText,
                  child: Text(chipText),
                );
              }).toList(),
            ).then(
              (selectedValue) {
                if (selectedValue != null) {
                  myChips.add(selectedValue);
                  chipList.remove(selectedValue);
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
  'innovation',
  'technology',
  'NFT',
  'marketing',
  'sport',
];
final List myChips = [];
