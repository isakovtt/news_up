import 'package:flutter/material.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';

class GlobalColorlessCircle extends StatefulWidget {
  const GlobalColorlessCircle({Key? key}) : super(key: key);

  @override
  State<GlobalColorlessCircle> createState() => _GlobalColorlessCircleState();
}

class _GlobalColorlessCircleState extends State<GlobalColorlessCircle> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isTapped = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          isTapped = false;
        });
      },
      onTapCancel: () {
        setState(() {
          isTapped = false;
        });
      },
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: AppColors.white,
            border: Border.all(
              width: 2,
              color: AppColors.greyScale_200,
            ),
          ),
          child: isTapped
              ? const Icon(Icons.check_circle,color: AppColors.primaryBase,)
              : const Icon(Icons.add_circle_outline_sharp)),
    );
  }
}
