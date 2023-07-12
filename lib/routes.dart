import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:rent/pages/home/index.dart';
import 'package:rent/pages/login.dart';
import 'package:rent/pages/not_found.dart';
import 'package:rent/pages/register.dart';
import 'package:rent/pages/room_detail/index.dart';

class Routes {
  // 定义路由名称
  static String home = "/";
  static String login = "/login";
  static String register = "/register";
  static String roomDetail = "/room_detail/:roomId";

  // 定义路由处理函数
  static final Handler homeHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const HomePage();
  });

  static final Handler loginHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const LoginPage();
  });

  static final Handler registerHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const RegisterPage();
  });

  static final Handler roomDetailHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    /// 1、左边?.右边 如果左边为null则返回null，如果左边不为null则返回右边；
    /// 2、左边!.右边 如果左边为null则抛出异常,代码不会再继续向下执行，如果左边不为null则返回右边。
    return RoomDetailPage(roomId: params['roomId']![0]);
  });

  static final Handler notFoundHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const NotFountPage();
  });

  //  编写函数configureRoutes关联路由名称和处理函数
  static void configureRoutes(FluroRouter router) {
    router.define(home, handler: homeHandler);
    router.define(login, handler: loginHandler);
    router.define(register, handler: registerHandler);
    router.define(roomDetail, handler: roomDetailHandler);
    router.notFoundHandler = notFoundHandler; // 404
  }
}
