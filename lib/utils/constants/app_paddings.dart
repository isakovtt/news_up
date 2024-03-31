import 'package:flutter/material.dart';

class AppPaddings {
  const AppPaddings._();

  static EdgeInsets get h24 => const EdgeInsets.symmetric(horizontal: 24);
  static EdgeInsets get h25 => const EdgeInsets.symmetric(horizontal: 25);
  static EdgeInsets get h22 => const EdgeInsets.symmetric(horizontal: 22);
  static EdgeInsets get h12 => const EdgeInsets.symmetric(horizontal: 12);
  static EdgeInsets get h5 => const EdgeInsets.symmetric(horizontal: 5);
  static EdgeInsets get h4 => const EdgeInsets.symmetric(horizontal: 4);
  static EdgeInsets get h8 => const EdgeInsets.symmetric(horizontal: 8);
  static EdgeInsets get v12 => const EdgeInsets.symmetric(vertical: 12);
  static EdgeInsets get v17 => const EdgeInsets.symmetric(vertical: 17);
  static EdgeInsets get v16 => const EdgeInsets.symmetric(vertical: 16);
  static EdgeInsets get h16 => const EdgeInsets.symmetric(horizontal: 16);
  static EdgeInsets get v20 => const EdgeInsets.symmetric(vertical: 20);
  static EdgeInsets get h20 => const EdgeInsets.symmetric(horizontal: 20);
  static EdgeInsets get l24 => const EdgeInsets.only(left: 24);
  static EdgeInsets get r24 => const EdgeInsets.only(right: 24);
  static EdgeInsets get r16 => const EdgeInsets.only(right: 16);
  static EdgeInsets get l16 => const EdgeInsets.only(left: 16);
  static EdgeInsets get t10 => const EdgeInsets.only(top: 10);
  static EdgeInsets get v16h20 =>
      const EdgeInsets.symmetric(horizontal: 20, vertical: 16);
  static EdgeInsets get all24 => const EdgeInsets.all(24);
  static EdgeInsets get all16 => const EdgeInsets.all(16);
  static EdgeInsets get all0 => const EdgeInsets.all(0);
  
  static EdgeInsets get lrb24t16 =>
      const EdgeInsets.only(top: 16, left: 24, right: 24, bottom: 24);
  static EdgeInsets get lr24t16 =>
      const EdgeInsets.only(top: 16, left: 24, right: 24);
  static EdgeInsets get lr24b12t13 =>
      const EdgeInsets.only(left: 24, right: 24, bottom: 12, top: 13.5);
  static EdgeInsets get l76r24 => const EdgeInsets.only(left: 76, right: 24);
  static EdgeInsets get l20r28 => const EdgeInsets.only(left: 20, right: 28);
  static EdgeInsets get r4l2 => const EdgeInsets.only(right: 4.0, left: 2);
  static EdgeInsets get b16 => const EdgeInsets.only(bottom: 16);
  static EdgeInsets get all3 => const EdgeInsets.all(3);
}
