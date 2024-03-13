import '../../utils/constants/app_texts.dart';

class CotegoryModel {
  String catogory;

  CotegoryModel({required this.catogory});
}

List<CotegoryModel> cotegory = [
  CotegoryModel(catogory: AppTexts.tranding),
  CotegoryModel(catogory: AppTexts.business),
  CotegoryModel(catogory: AppTexts.health),
  CotegoryModel(catogory: AppTexts.politics),
  CotegoryModel(catogory: AppTexts.international),
  CotegoryModel(catogory: AppTexts.finance),
];
