import 'package:flutter/material.dart';

class Navigate {
  const Navigate._();
  static navigatePush(context, page) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      );

  static navigateReplacePush(context, page) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => page),
      );

  static navigatePop(context, page) => Navigator.pop(
        context,
        MaterialPageRoute(builder: (context) => page),
      );
}
