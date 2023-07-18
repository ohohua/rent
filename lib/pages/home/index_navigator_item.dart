import 'package:flutter/cupertino.dart';


class IndexNavigatorItem {
  late final String title;
  late final String imageUri;
  late Function(BuildContext context) onTap;

  IndexNavigatorItem(this.title, this.imageUri, this.onTap);
}

// 这个List将用于导航栏使用， 再map中添加点击
List<IndexNavigatorItem> navigatorItemList = [
  IndexNavigatorItem('整租', 'static/images/1.png', (BuildContext context) {
    Navigator.of(context).pushNamed('login');
  }),
  IndexNavigatorItem('合租', 'static/images/1.png', (BuildContext context) {
    Navigator.of(context).pushNamed('login');
  }),
  IndexNavigatorItem('地图找房', 'static/images/1.png', (BuildContext context) {
    Navigator.of(context).pushNamed('login');
  }),
  IndexNavigatorItem('整租', 'static/images/1.png', (BuildContext context) {
    Navigator.of(context).pushNamed('login');
  }),
];