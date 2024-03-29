import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../data/models/draft_model.dart';
import 'draft_list_tile.dart';

class DraftListView extends StatelessWidget {
  const DraftListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: drafts.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => 12.verticalSpace,
      itemBuilder: (context, index) {
        final draft = drafts[index];
        return DraftListTile(
          verticalDots: true,
          image: draft.image,
          editTimeText: draft.editTime,
          headlinaText: draft.headline,
        );
      },
    );
  }
}
