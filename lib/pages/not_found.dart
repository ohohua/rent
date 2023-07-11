// 引入基础库
import 'package:flutter/material.dart';
// 引入自定义组件

// 编写无状态组件
class NotFountPage extends StatelessWidget {
  const NotFountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('404')),
      body: const Center(
        child: Text('404'),
      ),
    );
  }
}
