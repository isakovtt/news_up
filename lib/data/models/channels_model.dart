import '../../utils/constants/app_assets.dart';

class ChannelsModel {
  String icon;
  String channelName;

  ChannelsModel({required this.icon, required this.channelName});
}

List<ChannelsModel> contents = [
  ChannelsModel(icon: AppAssets.cnnVector, channelName: 'CNN'),
  ChannelsModel(icon: AppAssets.cnnVector, channelName: 'CNN'),
  ChannelsModel(icon: AppAssets.nbcVector, channelName: 'NBC'),
  ChannelsModel(icon: AppAssets.cnnVector, channelName: 'CNN'),
  ChannelsModel(icon: AppAssets.nbcVector, channelName: 'NBC'),
  ChannelsModel(icon: AppAssets.cnnVector, channelName: 'CNN'),
  ChannelsModel(icon: AppAssets.cnnVector, channelName: 'CNN'),
];
