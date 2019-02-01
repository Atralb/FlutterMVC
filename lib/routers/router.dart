import 'package:flutter/material.dart';

import 'package:mvc_simple/controllers/splashController.dart';
import 'package:mvc_simple/controllers/loginController.dart';
import 'package:mvc_simple/controllers/signinController.dart';



class Router extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Navigation',
      routes: <String, WidgetBuilder>{
       '/login': (BuildContext context) => LoginController.build(),
       '/signin': (BuildContext context) => SigninController.build(),
      },
      home: SplashController.build(),
    );
  }
}
