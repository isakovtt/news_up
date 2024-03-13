import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../data/models/channels_model.dart';
import '../../../../utils/constants/app_colors.dart';

class Channels extends StatelessWidget {

  const Channels({ super.key });

   @override
   Widget build(BuildContext context) {
       return SizedBox(
              height: 48.r,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: contents.length,
                separatorBuilder: (context, index) => 16.horizontalSpace,
                itemBuilder: (context, index) {
                  final item = contents[index];
                  return SizedBox(
                    width: 48.r,
                    child: DecoratedBox(
                      decoration: const BoxDecoration(
                        color: AppColors.greyScale_100,
                        borderRadius: BorderRadius.all(
                          Radius.circular(1000),
                        ),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          item.icon,
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
  }
}