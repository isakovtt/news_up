import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/data/models/draft_model.dart';
import 'package:newsup_app/presentation/pages/draft/draft_list_tile.dart';

class DraftView extends StatelessWidget {
  const DraftView({super.key});

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
          image: draft.image,
          editTimeText: draft.editTime,
          headlinaText: draft.headline,
        );
      },
    );
  }
}
