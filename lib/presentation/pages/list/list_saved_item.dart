import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants/app_assets.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_paddings.dart';
import '../../../utils/constants/app_text_styles.dart';
import '../../widgets/global_shadow_box.dart';
import '../../widgets/global_shimmer.dart';

class ListSavedItem extends StatefulWidget {
  const ListSavedItem(
      {super.key,
      required this.image,
      required this.category,
      required this.description,
      this.onTap});

  final String image;
  final String category;
  final String description;
  final Function()? onTap;

  @override
  State<ListSavedItem> createState() => _ListSavedItemState();
}

class _ListSavedItemState extends State<ListSavedItem> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 28),
      child: GestureDetector(
        onTap: widget.onTap,
        child: GlobalShadowBox(
          child: Padding(
            padding: AppPaddings.lr16t20b20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: _isLoading ?
                GlobalShimmer(width: 327, height: 208)
                  
                  : Image.network(
                    widget.image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    filterQuality: FilterQuality.high,
                  ),
                ),
                12.verticalSpace,
                Row(
                  children: [
                    SvgPicture.asset(
                      AppAssets.lockVector,
                    ),
                    8.horizontalSpace,
                    Text(
                      widget.category,
                      style: AppTextStyles.greyScale900s16W700,
                    ),
                    const Spacer(),
                    GestureDetector(
                        onTap: () {
                          final RenderBox box =
                              context.findRenderObject() as RenderBox;
                          final Offset position =
                              box.localToGlobal(Offset.zero);
                          showPopupMenu(context, position);
                        },
                        child: SvgPicture.asset(AppAssets.dotsGrey)),
                  ],
                ),
                8.verticalSpace,
                Text(
                  widget.description,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: AppTextStyles.greyScale400s12W400,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void showPopupMenu(BuildContext context, Offset tapPosition) async {
  final RenderBox overlay =
      Overlay.of(context).context.findRenderObject() as RenderBox;
  final Offset position = overlay.globalToLocal(tapPosition);

  final RelativeRect positionRect = RelativeRect.fromLTRB(
    position.dx + 200.w, // Sol taraftan mesafe (dots'un sol kenarı)
    position.dy + 200.h, // Üstten mesafe (dots'un üst kenarı)
    position.dx, // Sağdan mesafe (dots'un sağ kenarı)
    position.dy +
        10.w, // Menüyü biraz aşağıya kaydırma (görsel olarak güzel durması için)
  );

  await showMenu(
    context: context,
    position: positionRect,
    color: AppColors.white,
    surfaceTintColor: AppColors.white,
    shape: const Border.fromBorderSide(
      BorderSide(
        width: 2,
        color: AppColors.primary_100,
        style: BorderStyle.none,
      ),
    ),
    items: [
      PopupMenuItem(
        onTap: () {
          print('edit list');
        },
        value: 'edit',
        child: const Text('Edit'),
      ),
      PopupMenuItem(
        onTap: () {
          print('Delete list');
        },
        value: 'delete',
        child: const Text('Delete'),
      ),
    ],
    elevation: 8.0,
  );
}
