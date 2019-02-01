import 'package:flutter/material.dart';

import 'package:mvc_simple/mvc/mvcview.dart';

import 'package:mvc_simple/controllers/splashController.dart';

class SplashView extends MVCView {

  SplashView(this._con) : super(con: _con);

  final SplashController _con;

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Scaffold(
        body: Container(
          color: Colors.grey[600],
          child: Center(
            child: Image(image: _con.iconEkko, width: 250.0, height: 250.0,),
          ),
        )
      );
    }
}