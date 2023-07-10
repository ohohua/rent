// 引入基础库
import 'package:flutter/material.dart';
// 引入自定义组件
import 'package:rent/widgets/page_content.dart';

// 编写无状态组件
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageContent(name: '登录页');
  }
}
