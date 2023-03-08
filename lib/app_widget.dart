import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/app_controller.dart';

import 'home_page.dart';
import 'login_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
              primarySwatch: Colors.amber, 
              brightness: AppController.instance.isDarkTheme 
              ? Brightness.dark 
              : Brightness.light),
          initialRoute: '/',
          routes: {
            '/':(context) => LoginPage(),
            '/home': (context) => HomePage(),
          },
        );
      }, animation: AppController.instance,
    );
  }
}
