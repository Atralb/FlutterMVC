import 'package:flutter/material.dart';

import 'package:mvc_simple/mvc/mvcview.dart';

import 'package:mvc_simple/controllers/signinController.dart';

class SigninView extends MVCView {

  SigninView(this._con) : super(con: _con);

  final SigninController _con;

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Scaffold(
        appBar: AppBar(
          title: Image(image: _con.iconEkko, width: 50.0, height: 50.0,),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          color: Colors.grey[600],          
          child: Center(
            child: ListView(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: _con.email),
                controller: TextEditingController(),
              ),
              TextField(
                decoration: InputDecoration(labelText: _con.password),
                controller: TextEditingController(),
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: _con.checkboxRememberMe,
                    onChanged: _con.onChangedcheckboxRememberMe(),
                  ),
                  Text(_con.rememberMe),
                ],
              ),
              Padding(padding: EdgeInsets.all(30.0),),
              RaisedButton(
                child: Text(_con.login),
                onPressed: (){Navigator.of(context).pushNamed('/success');},
              ),
              Padding(padding: EdgeInsets.all(10.0),),              
              RaisedButton(
                child: Text(_con.forgotPassword),
                onPressed: (){},
              ),
              Padding(padding: EdgeInsets.all(10.0),),              
              RaisedButton(
                child: Text(_con.instructionsNotReceived),
                onPressed: (){},
              ),
            ],
          ),
          )
        )
      );
    }
}