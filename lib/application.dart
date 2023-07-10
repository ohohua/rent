import 'package:flutter/material.dart';
import 'package:rent/pages/login.dart';
import 'package:fluro/fluro.dart';
import 'package:rent/routes.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    FluroRouter router = FluroRouter();
    Routes.configureRoutes(router);
    return MaterialApp(
      onGenerateRoute: router.generator,
    );
  }
}
