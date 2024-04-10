import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../cubits/users/users_cubit.dart';
import '../../utils/constants/app_themes.dart';
import '../../utils/helpers/configs.dart';
import 'bottom_navigation/navigation_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, _) {
        return BlocProvider(
          create: (context) => UsersCubit(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: Configs.appName,
            theme: AppThemes.appTheme,
            home: const NavigationScreen(),
          ),
        );
      },
    );
  }
}
