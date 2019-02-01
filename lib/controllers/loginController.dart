import 'package:mvc_simple/mvc/mvccontroller.dart';

import 'package:mvc_simple/models/loginModel.dart';
import 'package:mvc_simple/views/loginView.dart';

class LoginController extends MVCController {

  LoginController(this._model);

  LoginModel _model;

  static LoginView build() => LoginView(LoginController(LoginModel()));

  get signIn => _model.signIn;

  get signUp => _model.signUp;

  get welcomeText => _model.welcomeText;

  get iconEkko => _model.iconEkko;
  get iconMunic => _model.iconMunic;
  

}