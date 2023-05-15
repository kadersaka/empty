import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ApplicationView {
  static GlobalKey<ScaffoldState>? globalKey;
  static GlobalKey<ScaffoldState>? _lastGlobalKey;

  static setScaffoldStateKey(GlobalKey<ScaffoldState>? globalKey) {
    ApplicationView.globalKey = globalKey;
    ApplicationView._lastGlobalKey = globalKey;
  }
}