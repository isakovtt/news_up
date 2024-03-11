import 'package:flutter/material.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton(
      {super.key, this.color, this.height, this.width, this.child, this.border});
  final Color? color;
  final double? height;
  final double? width;
  final Widget? child;
  final BoxBorder? border;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),border: border,
        color: color,
      ),
      child: child,
    );
  }
}
