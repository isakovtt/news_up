import 'package:flutter/material.dart';

import 'search_app_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SearchAppBar(),
    );
  }
}
