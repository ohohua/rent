class IndexRecommendItem {
  final String title;
  final String subTitle;
  final String imageUri;
  final String navigateUri;

  const IndexRecommendItem(
      this.imageUri, this.title, this.navigateUri, this.subTitle);
}

const List<IndexRecommendItem> indexRecommendData = [
  IndexRecommendItem(
      'static/images/home_index_logo.png', '家住回龙观1', 'login', '归属的感觉'),
  IndexRecommendItem(
      'static/images/home_index_logo.png', '家住回龙观2', 'login', '归属的感觉'),
  IndexRecommendItem(
      'static/images/home_index_logo.png', '家住回龙观3', 'login', '归属的感觉'),
  IndexRecommendItem(
      'static/images/home_index_logo.png', '家住回龙观4', 'login', '归属的感觉'),
];
