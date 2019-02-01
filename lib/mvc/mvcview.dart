import 'package:flutter/widgets.dart';

import 'package:mvc_simple/mvc/mvccontroller.dart';
import 'package:mvc_simple/mvc/mvcstate.dart';

abstract class MVCView extends StatefulWidget {
  const MVCView({
    this.con,
    Key key,
  }) : super(key: key);

  final MVCController con;

  get controller => con;

  @override
  State<StatefulWidget> createState() {
    var state = MVCState(this, con);

    con?.state = state;

    return state;
  }

  get widget => this;

  get context => con.state.context ?? createState().context;

  get mounted => con.state.mounted ?? createState().mounted;

  Widget build(BuildContext context);
}
