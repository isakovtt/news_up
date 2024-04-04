import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/write_news_app_bar.dart';
import 'widgets/write_news_footer.dart';
import 'widgets/write_news_subtitle_input.dart';
import 'widgets/write_news_title_input.dart';

class WriteNewsScreen extends StatelessWidget {
  const WriteNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WriteNewsAppBar(),
      body: Column(
        children: [
          32.verticalSpace,
          const WriteNewsTitleInput(),
          24.verticalSpace,
          const WriteNewsSubtitleInput(),
        ],
      ),
      bottomNavigationBar: const WriteNewsFooter(),
    );
  }
}
