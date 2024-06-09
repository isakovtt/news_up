import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../utils/constants/app_box_decorations.dart';
import '../../utils/constants/app_paddings.dart';

class GlobalLiveNews extends StatefulWidget {
  const GlobalLiveNews({super.key});

  @override
  State<GlobalLiveNews> createState() => _GlobalLiveNewsState();
}

class _GlobalLiveNewsState extends State<GlobalLiveNews> {
  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'gCNeDWCI0vo',
    flags: const YoutubePlayerFlags(
      isLive: true,
      autoPlay: false,
    ),
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h24,
      child: GestureDetector(
        onTap: () => _controller.pause(),
        child: Container(
          width: double.infinity,
          height: 208.h,
          clipBehavior: Clip.antiAlias,
          decoration: AppBoxDecorations.circular18,
          child: Stack(
            alignment: Alignment.center,
            fit: StackFit.expand,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: YoutubePlayer(
                  controller: _controller,
                  liveUIColor: Colors.amber,
                ),
              ),
              // Positioned(
              //   left: 24,
              //   bottom: 43,
              //   child: SizedBox(
              //     width: 279.w,
              //     height: 52.h,
              //     child: Text(
              //       'Ukraine conflict: Kyiv brace for a Russian assault',
              //       maxLines: 3,
              //       overflow: TextOverflow.ellipsis,
              //       style: AppTextStyles.whiteS16W700,
              //     ),
              //   ),
              // ),
              // Positioned(
              //   left: 16,
              //   top: 16,
              //   width: 71.w,
              //   height: 26.h,
              //   child: SvgPicture.asset(
              //     AppAssets.liveVector,
              //   ),
              // ),

              // Positioned(
              //   bottom: 12,
              //   right: 24,
              //   child: Text(
              //     '235 Joined',
              //     style: AppTextStyles.whiteS12W400,
              //   ),
              // ),
              // Positioned(
              //   left: 24,
              //   bottom: 12,
              //   child: Row(
              //     children: [
              //       NewsSourceIconAndName(
              //         sourceIcon: AppAssets.cnnVector,
              //         sourceName: 'ABC News',
              //         liveIcon: true,
              //         style: AppTextStyles.whiteS12W500,
              //         width: 68,
              //       ),
              //       7.horizontalSpace,
              //       const GlobalDot.min(),
              //       7.horizontalSpace,
              //       Text(
              //         'Today',
              //         style: AppTextStyles.whiteS12W400,
              //       )
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
