import 'package:flutter/widgets.dart';

import 'package:mvc_simple/mvc/mvcstate.dart';
import 'package:mvc_simple/mvc/mvcview.dart';

class MVCController {

  MVCState state;

  MVCController();

  get widget => state?.view;

  get context => state?.context;

  get mounted => state?.mounted;

  void initState() {}

  void deactivate() {}

  void dispose() {}

  void didUpdateWidget(MVCView oldWidget) {}

  void didChangeAppLifecycleState(AppLifecycleState state) {}

  void setState(VoidCallback fn) {
    state?.reState(fn);
  }

  void refresh() {
    state?.reState(() {});
  }
}
