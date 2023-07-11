// 引入基础库
import 'package:flutter/material.dart';
// 引入自定义组件
import 'package:rent/widgets/page_content.dart';

// 编写无状态组件
class RoomDetailPage extends StatelessWidget {
  const RoomDetailPage({super.key, required this.roomId});

  final String roomId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('roomId：$roomId')),
    );
  }
}
