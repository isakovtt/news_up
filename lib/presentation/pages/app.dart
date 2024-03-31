import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/presentation/pages/edit_profile/edit_profile_screen.dart';
import 'package:newsup_app/presentation/pages/home/home_screen.dart';
import 'package:newsup_app/presentation/pages/home/navigation_screen.dart';
import 'package:newsup_app/presentation/pages/onboarding/onboarding_screen.dart';
import 'package:newsup_app/presentation/pages/setting_screen/setting_screen.dart';

import '../../utils/constants/app_themes.dart';
import '../../utils/helpers/configs.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: Configs.appName,
          theme: AppThemes.appTheme,
          home: const NavigationScreen(),
        );
      },
    );
  }
}
