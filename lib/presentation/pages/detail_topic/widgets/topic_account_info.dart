import 'package:flutter/material.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';

import '../../../widgets/account_information.dart';

class TopicAccountInfo extends StatelessWidget {
  const TopicAccountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h24,
      child: const AccountInformation(
        hasVerified: false,
        hasUsername: false,
        name: 'Business',
        username: '@barkin_michella',
        bio:
            'Business is the foundation that merges innovation, resources, and strategies to create services.',
      ),
    );
  }
}
