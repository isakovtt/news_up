import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'presentation/pages/app.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}
