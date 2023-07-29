class RoomListItemData {
  final String id;
  final String title;
  final String subTitle;
  final String imageUri;
  final List<String> tags;
  final int price;
  RoomListItemData(
      {required this.imageUri,
      required this.title,
      required this.subTitle,
      required this.id,
      required this.price,
      required this.tags});
}

List<RoomListItemData> dataList = [
  RoomListItemData(
      title: '朝陽門大街1號 2室1庭 8300元',
      subTitle: '二室/114/東|北',
      imageUri: 'static/images/home_index_logo.png',
      tags: [],
      price: 9000,
      id: "1"),
  RoomListItemData(
      title: '朝陽門大街1號 2室1庭 8300元',
      subTitle: '二室/114/東|北',
      imageUri: 'static/images/home_index_logo.png',
      tags: [],
      price: 9000,
      id: "1"),
  RoomListItemData(
      title: '朝陽門大街1號 2室1庭 8300元',
      subTitle: '二室/114/東|北',
      imageUri: 'static/images/home_index_logo.png',
      tags: [],
      price: 9000,
      id: "1"),
  RoomListItemData(
      title: '朝陽門大街1號 2室1庭 8300元',
      subTitle: '二室/114/東|北',
      imageUri: 'static/images/home_index_logo.png',
      tags: [],
      price: 9000,
      id: "1"),
];
