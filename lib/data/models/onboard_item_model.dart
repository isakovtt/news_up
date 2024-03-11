import '../../utils/constants/app_assets.dart';
import '../../utils/constants/app_texts.dart';

class UnbordingContent {
  String? image;
  String? title;
  String? discription;

  UnbordingContent({this.image, this.title, this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
    image: AppAssets.onboardPicture_1,
    title: AppTexts.onboardFirstTitle,
    discription: AppTexts.onboardFirstDescription,
  ),
  UnbordingContent(
    image: AppAssets.onboardPicture_3,
    title: AppTexts.exploreAndShare,
    discription: AppTexts.onboardFirstDescription,
  ),
];
