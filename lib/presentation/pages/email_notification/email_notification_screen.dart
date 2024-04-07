import 'package:flutter/material.dart';
import 'package:newsup_app/presentation/pages/edit_profile/widgets/global_app_bar.dart';
import 'package:newsup_app/presentation/pages/email_notification/widgets/notifications_boxes.dart';
import '../../../utils/constants/app_paddings.dart';
import '../../../utils/constants/app_texts.dart';

class EmailNotificationScreen extends StatelessWidget {
  const EmailNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const GlobalAppBar(text: AppTexts.emailNotifications),
        body: Padding(
          padding: AppPaddings.h24,
          child: ListView(
            children: const [
              NotificationsBoxes()
            ],
          ),
        ));
  }
}
