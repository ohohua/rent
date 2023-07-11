import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:rent/routes.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    FluroRouter router = FluroRouter();
    Routes.configureRoutes(router);
    return MaterialApp(
      theme: ThemeData(
          colorScheme: const ColorScheme(
              primary: Colors.green, //上方标题栏颜色
              secondary: Colors.green,
              background: Colors.green,
              error: Colors.green,
              brightness: Brightness.light,
              onBackground: Colors.green,
              onError: Colors.green,
              onPrimary: Colors.white, //字体颜色
              onSecondary: Colors.green,
              onSurface: Colors.green,
              surface: Colors.green)),
      onGenerateRoute: router.generator,
    );
  }
}
