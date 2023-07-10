import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:rent/pages/home/index.dart';
import 'package:rent/pages/login.dart';

class Routes {
  // 定义路由名称
  static String home = "/";
  static String login = "/login";

  // 定义路由处理函数
  static final Handler homeHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const HomePage();
  });

  static final Handler loginHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const LoginPage();
  });

  //  编写函数configureRoutes关联路由名称和处理函数
  static void configureRoutes(FluroRouter router) {
    router.define(home, handler: homeHandler);
    router.define(login, handler: loginHandler);
  }
}
