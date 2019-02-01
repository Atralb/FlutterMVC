import 'package:flutter/material.dart';

import 'package:mvc_simple/mvc/mvcview.dart';

import 'package:mvc_simple/controllers/loginController.dart';

class LoginView extends MVCView {
  LoginView(this._con) : super(con: _con);

  final LoginController _con;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Image(image: _con.iconEkko, width: 50.0, height: 50.0,),
        centerTitle: true,
      ),
        body: Container(
            color: Colors.grey[600],
            child: Padding(
              padding: EdgeInsets.all(50.0),
              child: Center(
                child: ListView(
                  children: <Widget>[
                    Image(image: _con.iconMunic),                    
                    Padding(
                      padding: EdgeInsets.all(100.0),
                    ),
                    RaisedButton(
                      child: Text(
                        _con.signIn.toUpperCase(),
                        textScaleFactor: 1.5,
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/signin');
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                    ),
                    RaisedButton(
                      child: Text(
                        _con.signUp.toUpperCase(),
                        textScaleFactor: 1.5,
                      ),
                      onPressed: () {},
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                    ),
                  ],
                ),
              ),
            )));
  }
}
