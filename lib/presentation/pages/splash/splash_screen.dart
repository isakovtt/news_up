import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../../../utils/helpers/navigate.dart';
import '../../widgets/global_app_logo.dart';
import '../bottom_navigation/navigation_screen.dart';
import '../onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

final box = Hive.box('splash');

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 2),
      () {
        Navigate.navigateReplacePush(
          context,
          box.isEmpty ?
           const OnboardingScreen() 
           : const NavigationScreen(),
        );
        // context.pushReplacementNamed(RouteConstants.onboarding);
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
