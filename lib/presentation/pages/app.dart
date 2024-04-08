import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/presentation/pages/explore/explore_screen.dart';
import 'package:newsup_app/presentation/pages/explore/search/search_screen.dart';
import 'package:newsup_app/presentation/pages/bottom_navigation/navigation_screen.dart';
import 'package:newsup_app/presentation/pages/list/list_screen.dart';

import '../../utils/constants/app_themes.dart';
import '../../utils/helpers/configs.dart';
import 'draft/draft_screen.dart';

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
