import 'package:flutter/widgets.dart';

import 'package:mvc_simple/mvc/mvcview.dart';
import 'package:mvc_simple/mvc/mvccontroller.dart';

class MVCState extends State<MVCView> with WidgetsBindingObserver {
  MVCState(
    this.view,
    this._con,
  );

  final MVCView view;

  final MVCController _con;

  @override
  void initState() {
    super.initState();
    _con?.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void deactivate() {
    _con?.deactivate();
    super.deactivate();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _con?.dispose();
    super.dispose();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didUpdateWidget(MVCView oldWidget) {
    _con?.didUpdateWidget(oldWidget);
    super.didUpdateWidget(oldWidget);
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _con?.didChangeAppLifecycleState(state);
  }

  void reState(VoidCallback fn) {
    setState(fn);
  }

  Widget build(BuildContext context) {
    return view.build(context);
  }
}
