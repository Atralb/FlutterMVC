import 'package:mvc_simple/mvc/mvccontroller.dart';

import 'package:mvc_simple/models/signinModel.dart';
import 'package:mvc_simple/views/signinView.dart';

class SigninController extends MVCController {
  SigninController(this._model);

  SigninModel _model;

  static SigninView build() => SigninView(SigninController(SigninModel()));

  bool _checkboxRememberMe = false;

  get checkboxRememberMe => _checkboxRememberMe;

  onChangedcheckboxRememberMe() {
    setState(() {
      _checkboxRememberMe = !_checkboxRememberMe;
    });
  }

  get iconEkko => _model.iconEkko;
  get iconMunic => _model.iconMunic;

  get email => _model.email;
  get password => _model.password;
  get rememberMe => _model.rememberMe;
  get login => _model.login;
  get forgotPassword => _model.forgotPassword;
  get instructionsNotReceived => _model.instructionsNotReceived;
}
