import 'package:chip_list/chip_list.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../data/models/explore_chip_list.dart';
import '../../../../utils/constants/app_colors.dart';

class ExploreChips extends StatelessWidget {
  const ExploreChips({super.key});

  Future<List<String>> fetchChipData() async {
   
    await Future.delayed(const Duration(seconds: 2));
    return ExploreChipListModel
        .dogeNames; 
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<String>>(
      future: fetchChipData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: SizedBox(
              width: double.infinity,
              child: Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                child: Wrap(
                  spacing: 10,
                  runSpacing: 12,
                  children: List.generate(
                    7,
                    (index) => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey[300],
                      ),
                      width: 85,
                      height: 43,
                    ),
                  ),
                ),
              ),
            ),
          );
        } else if (snapshot.hasError) {
          return Center(child: Text('Bir hata oluştu: ${snapshot.error}'));
        } else {
          return Padding(
            padding: const EdgeInsets.only(left: 16),
            child: SizedBox(
              width: double.infinity,
              child: ChipList(
                listOfChipNames: snapshot.data ?? [],
                spacing: 10,
                runSpacing: 2,
                activeBgColorList: [Theme.of(context).primaryColor],
                inactiveBgColorList: const [AppColors.greyScale_100],
                inactiveTextColorList: [Theme.of(context).primaryColor],
                inactiveBorderColorList: const [AppColors.greyScale_200],
                wrapAlignment: WrapAlignment.start,
                wrapCrossAlignment: WrapCrossAlignment.start,
                shouldWrap: true,
                showCheckmark: false,
                supportsMultiSelect: true,
                scrollPhysics: const NeverScrollableScrollPhysics(),
                listOfChipIndicesCurrentlySeclected:  [],
              ),
            ),
          );
        }
      },
    );
  }
}
