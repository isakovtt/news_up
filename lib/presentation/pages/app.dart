import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/presentation/pages/authorization_screens/news_types_chip/news_types_chip.dart';
import 'package:newsup_app/presentation/pages/detail/detail_news_screen.dart';
import 'package:newsup_app/presentation/pages/draft/draft_screen.dart';
import 'package:newsup_app/presentation/pages/explore/explore_screen.dart';
import 'package:newsup_app/presentation/pages/home/home_screen.dart';

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
          home: const ExploreScreen(),
        );
      },
    );
  }
}
