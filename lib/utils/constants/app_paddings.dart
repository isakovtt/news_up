import 'package:flutter/material.dart';

class AppPaddings {
  const AppPaddings._();

  static EdgeInsets get h24 => const EdgeInsets.symmetric(horizontal: 24);
  static EdgeInsets get h22 => const EdgeInsets.symmetric(horizontal: 22);
  static EdgeInsets get h12 => const EdgeInsets.symmetric(horizontal: 12);
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
  static EdgeInsets get v16h20 =>
      const EdgeInsets.symmetric(horizontal: 20, vertical: 16);
  static EdgeInsets get all24 => const EdgeInsets.all(24);
  static EdgeInsets get lrb24t16 =>
      const EdgeInsets.only(top: 16, left: 24, right: 24, bottom: 24);
  static EdgeInsets get lr24t16 =>
      const EdgeInsets.only(top: 16, left: 24, right: 24);
  static EdgeInsets get lr24b12t13 =>
      const EdgeInsets.only(left: 24, right: 24, bottom: 12, top: 13.5);
}
