

class ListHighlightModel {
  String image;
  String categoryTitle;
  String description;

  ListHighlightModel({
    required this.image,
    required this.categoryTitle,
    required this.description,
  });
}

List<ListHighlightModel> listHighlight = [
  ListHighlightModel(
    image: 'https://www.pixelstalk.net/wp-content/uploads/images6/Business-Wallpaper-Free-Download.jpg',
    categoryTitle: 'Engineering',
    description:
        'Engineering, the application of science to the optimum conversion of the resources of nature to the uses of humankind.',
  ),
  ListHighlightModel(
    image: 'https://wallpapers.com/images/hd/pros-and-cons-of-travelling-solo-j5dvlhll1ef5pq2j.jpg',
    categoryTitle: 'Lifestyle',
    description:
        'A healthy lifestyle can help you thrive as you pursue your personal path in life.',
  ),
  ListHighlightModel(
    image: 'https://media.istockphoto.com/id/1389238948/photo/hand-touching-global-networking-on-data-connection-science-big-data-internet-technology.jpg?s=612x612&w=0&k=20&c=yCNE-b7vr1kD9iRAIH4Qq6J3ZRBalj_mCZVrNVsev50=',
    categoryTitle: 'Science',
    description:
        'Daily science news on research developments, technological breakthroughs and the latest scientific innovations',
  ),
];
