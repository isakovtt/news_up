import 'package:flutter/material.dart';
import 'package:newsup_app/presentation/widgets/global_black_button.dart';
import 'package:newsup_app/utils/constants/app_texts.dart';

class NotificationAcceptButton extends StatelessWidget {
  const NotificationAcceptButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: const GlobalBlackButton(
        text: AppTexts.accept,
      ),
    );
  }
}
