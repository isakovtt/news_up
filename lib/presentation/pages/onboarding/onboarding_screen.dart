import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/helpers/navigate.dart';
import '../authorization_screens/login/login_screen.dart';
import '../authorization_screens/register/register_screen.dart';
import 'widgets/onboard_first_screen.dart';
import 'widgets/onboard_app_bar.dart';
import 'widgets/onboard_get_started_button.dart';
import 'widgets/onboard_login_button.dart';
import 'widgets/onboard_second_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _controller;
  final List onboardScreens = const [
    OnboardFirstScreen(),
    OnboardSecondScreen(),
  ];

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OnboardAppBar(controller: _controller),
      body: PageView.builder(
        controller: _controller,
        itemCount: onboardScreens.length,
        itemBuilder: (context, index) {
          return onboardScreens[index];
        },
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 25, bottom: 16, right: 25),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () => Navigate.navigatePush(
                context,
                const LoginScreen(),
              ),
              child: const InnerColorlessButton(),
            ),
            12.horizontalSpace,
            GestureDetector(
              onTap: () => Navigate.navigatePush(
                context,
                const RegisterScreen(),
              ),
              child: const InsideColoredButton(),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
