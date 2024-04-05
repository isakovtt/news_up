import 'package:flutter/material.dart';
import 'package:newsup_app/presentation/widgets/inside_colored_button.dart';
import 'package:newsup_app/utils/constants/app_texts.dart';

class PreviewPublishButton extends StatelessWidget {
  const PreviewPublishButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InsideColoredButton(
      text: AppTexts.publish,
      width: double.infinity,
      onTap: () {},
    );
  }
}
