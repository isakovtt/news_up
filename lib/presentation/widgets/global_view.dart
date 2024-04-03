import 'package:flutter/material.dart';

class GlobalView extends StatelessWidget {
  const GlobalView({super.key, required this.children});
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children,
        ),
      ),
    );
  }
}
