import 'dart:async';

import 'package:flutter/material.dart';

import '../../../utils/helpers/navigate.dart';
import '../../widgets/global_app_logo.dart';
import '../onboarding/widgets/onboard_first_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 2),
      () {
        Navigate.navigateReplacePush(
          context,
          const OnboardFirstScreen(),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Scaffold(
        body: GlobalAppLogo(),
      ),
    );
  }
}
