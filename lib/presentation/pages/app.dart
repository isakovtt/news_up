import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constants/app_themes.dart';
import '../../utils/helpers/configs.dart';
import 'authorization_screens/login/login_screen.dart';


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
          home: const LoginScreen(),
        );
      },
    );
  }
}
