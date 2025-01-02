import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_box_decorations.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../widgets/global_sheet_item.dart';
import '../../../widgets/inner_colorless_button.dart';
import '../../../widgets/inside_colored_button.dart';

class HomeSheet {
  HomeSheet._();

  static void globalSheet(
      BuildContext ctx, QueryDocumentSnapshot<Map<String, dynamic>> post) {
    showModalBottomSheet(
      useSafeArea: true,
      context: ctx,
      builder: (context) {
        return StreamBuilder(
          stream: FirebaseFirestore.instance.collection('lists').snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const SizedBox.shrink();
            }
            final listDatas = snapshot.data!.docs;

            List<bool> isTappedList =
                List.generate(listDatas.length, (index) => false);

            return Container(
              height: 340.h,
              decoration: AppBoxDecorations.whiteCircularLR24,
              width: double.infinity,
              padding: AppPaddings.all24,
              child: Column(
                children: [
                  Column(
                    children: [
                      SvgPicture.asset(AppAssets.indicatorVector),
                      15.verticalSpace,
                      Text('Your lists',
                          style: AppTextStyles.greyScale900s16W700),
                    ],
                  ),
                  20.verticalSpace,
                  SizedBox(
                    height: 185,
                    child: ListView.separated(
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemCount: listDatas.length,
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 20),
                      itemBuilder: (context, index) {
                        final listName = listDatas[index];
                        return GlobalSheetItem(
                          onTapChanged: (bool tapped) {
                            isTappedList[index] = tapped;
                            if (tapped) {
                              FirebaseFirestore.instance
                                  .collection('lists')
                                  .doc(listName.id)
                                  .get()
                                  .then((document) {
                                if (document.exists) {
                                  print('Document data: ${document.data()}');
                                  FirebaseFirestore.instance
                                      .collection('lists')
                                      .doc(document.id)
                                      .collection('collectionPath')
                                      .doc()
                                      .set(post.data());
                                } else {
                                  log('No such document!');
                                }
                              }).catchError((error) {
                                log('Error getting document: $error');
                              });
                            }
                            log('${isTappedList[index]} sssss');
                          },
                          text: listName['listName'],
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
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  TextButton(
                                    child: const Text('Create'),
                                    onPressed: () {
                                      final listName =
                                          listController.text.trim();
                                      if (listName.isNotEmpty) {
                                        FirebaseFirestore.instance
                                            .collection('lists')
                                            .doc(listName)
                                            .set({
                                          'listName': listName,
                                          'listDescription':
                                              'Description not available',
                                          'listPicture':
                                              AppAssets.defaultListPicture,
                                        }).then((_) {
                                          Navigator.of(context).pop();
                                        }).catchError((error) {
                                          Navigator.of(context).pop();
                                        });
                                      } else {
                                        log('error lst');
                                      }
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                      12.horizontalSpace,
                      InsideColoredButton(
                        onTap: () {
                          // Burada isTappedList'i kontrol et
                          if (isTappedList.any((tapped) => tapped)) {
                            // En az bir eleman seçilmişse
                            // İstediğiniz metodu çağırın
                            log('Selected items: ${isTappedList.where((tapped) => tapped).toList()}');
                          } else {
                            log('Hiçbir eleman seçilmedi!');
                          }
                        },
                        height: 50,
                        text: 'Add',
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
