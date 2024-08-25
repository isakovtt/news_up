import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:input_dialog/input_dialog.dart';

import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_box_decorations.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../widgets/global_sheet_item.dart';
import '../../../widgets/inner_colorless_button.dart';
import '../../../widgets/inside_colored_button.dart';

class HomeSheet {
  HomeSheet._();

  static void globalSheet(BuildContext ctx) {
    showModalBottomSheet(
      useSafeArea: true,
      context: ctx,
      builder: (context) {
        return Container(
          height: 340.h,
          decoration: AppBoxDecorations.whiteCircularLR24,
          width: double.infinity,
          padding: AppPaddings.all24,
          child: Column(
            children: [
              Column(
                children: [
                  SvgPicture.asset(
                    AppAssets.indicatorVector,
                  ),
                  15.verticalSpace,
                  Text(
                    'Your lists',
                    style: AppTextStyles.greyScale900s16W700,
                  ),
                ],
              ),
              20.verticalSpace,
              SizedBox(
                height: 185,
                child: StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('lists')
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return const SizedBox.shrink();
                    }
                    final listDatas = snapshot.data!.docs;

                    return ListView.separated(
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemCount: listDatas.length,
                      separatorBuilder: (context, index) => 20.verticalSpace,
                      itemBuilder: (context, index) {
                        final listName = listDatas[index];
                        return GlobalSheetItem(
                          text: listName['listName'],
                        );
                      },
                    );
                  },
                ),
              ),
              20.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InnerColorlessButton(
                    height: 50,
                    text: 'Create',
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          final TextEditingController listController =
                              TextEditingController();
                          return AlertDialog(
                            title: Text(
                              'Enter List Name',
                              style: AppTextStyles.greyScale900s18W700,
                            ),
                            content: SizedBox(
                              height: 56,
                              child: TextField(
                                controller: listController,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(22))),
                                  hintText: 'Write...',
                                ),
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(
                                child: const Text('Cancel'),
                                onPressed: () {
                                  Navigator.of(context)
                                      .pop(); // Close the dialog
                                },
                              ),
                              TextButton(
                                child: const Text('Create'),
                                onPressed: () {
                                  final listName = listController.text.trim();
                                  if (listName.isNotEmpty) {
                                    FirebaseFirestore.instance
                                        .collection('lists')
                                        .doc(listName)
                                        .set({
                                      'listName': listName,
                                      'listDescription': 'Description not available',
                                      'listPicture':
                                          AppAssets.defaultListPicture,
                                    }).then((_) {
                                      Navigator.of(context).pop();
                                    }).catchError((error) {
                                      Navigator.of(context).pop();
                                    });
                                  } else {}
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                  12.horizontalSpace,
                  const InsideColoredButton(
                    height: 50,
                    text: 'Add',
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
