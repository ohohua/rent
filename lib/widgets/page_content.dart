import 'package:flutter/material.dart';

import '../routes.dart';

// 编写无状态组件
class PageContent extends StatelessWidget {
  final String name;

  const PageContent({super.key, required this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('当前页面：$name')),
      body: ListView(
        children: <Widget>[
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.home);
              },
              child: Text(Routes.home)),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.login);
              },
              child: Text(Routes.login)),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, 'room_detail/122');
              },
              child: const Text('带参数的路由')),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/not');
              },
              child: const Text('不存在的路由'))
        ],
      ),
    );
  }
}
