import 'package:flutter/material.dart';

import '../../../../utils/constants/app_paddings.dart';

class PreviewImage extends StatelessWidget {
  const PreviewImage({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.lrt16,
      child: Image.asset(
       image,
        fit: BoxFit.cover,
        width: double.infinity,
        filterQuality: FilterQuality.high,
      ),
    );
  }
}
