import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../data/models/publish_model.dart';
import 'draft_list_tile.dart';

class PublishView extends StatelessWidget {
  const PublishView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: publishes.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => 12.verticalSpace,
      itemBuilder: (context, index) {
        final publish = publishes[index];
        return DraftListTile(
          seenCount: true,
          image: publish.image,
          editTimeText: publish.editTime,
          headlinaText: publish.headline,
          seenText: publish.seenCount,
        );
      },
    );
  }
}
