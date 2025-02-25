import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'presentation/pages/app.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();

  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await Hive.openBox('writeNews');
  await Hive.openBox('login');
  await Hive.openBox('splash');

  await Firebase.initializeApp();
  // await FirebaseAppCheck.instance.activate(
  //   webProvider: ReCaptchaV3Provider('newsup'),
  //   androidProvider: AndroidProvider.debug,
  //   appleProvider: AppleProvider.debug,
  // );

   FirebaseAppCheck firebaseAppCheck = FirebaseAppCheck.instance;
  await firebaseAppCheck.activate(
    androidProvider: AndroidProvider.debug);

  runApp(const MyApp());
}
