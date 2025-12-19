import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants/app_assets.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_paddings.dart';
import '../../../utils/constants/app_text_styles.dart';
import '../../widgets/global_shadow_box.dart';
import '../../widgets/global_shimmer.dart';

class ListRecentItem extends StatelessWidget {
  const ListRecentItem(
      {super.key,
      required this.image,
      required this.category,
      required this.description,
      this.onTap,  this.isLoading = false});

  final String image;
  final String category;
  final String description;
  final Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 28),
      child: GestureDetector(
        onTap: onTap,
        child: GlobalShadowBox(
          child: Padding(
            padding: AppPaddings.lr16t20b20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                isLoading
                    ? const GlobalShimmer(width: 327, height: 208) :
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    image,
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
                      category,
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
                  description,
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
  // Ekran üzerindeki pozisyonu hesaplamak
  final RenderBox overlay =
      Overlay.of(context).context.findRenderObject() as RenderBox;
  final Offset position = overlay.globalToLocal(tapPosition);

  // Menü pozisyonunun doğru yerleşimi için gerekli hesaplamalar
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

