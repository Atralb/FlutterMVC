import 'dart:async';
import 'package:flutter/material.dart';

import 'package:mvc_simple/mvc/mvccontroller.dart';

import 'package:mvc_simple/models/splashModel.dart';
import 'package:mvc_simple/views/splashView.dart';

class SplashController extends MVCController {

  SplashController(this._model) {
    startTimeout();
  }

  var loadingTimeout = Duration(seconds: 4);

startTimeout() {
  return new Timer(loadingTimeout, handleTimeout);
}
void handleTimeout() {
  Navigator.of(context).pushNamed('/login');
}

  SplashModel _model;

  static SplashView build() => SplashView(SplashController(SplashModel()));


  get iconEkko => _model.iconEkko;
}