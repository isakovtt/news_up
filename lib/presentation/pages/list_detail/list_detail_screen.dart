import 'package:flutter/material.dart';

import 'list_detail_app_bar.dart';
import 'list_detail_list_view.dart';

class ListDetailScreen extends StatelessWidget {
  const ListDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ListDetailAppBar(),
      body: ListDetailListView(),
    );
  }
}
