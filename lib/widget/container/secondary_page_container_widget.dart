import 'package:flutter/material.dart';

import '../../views/application_view.dart';
import '../DrawerWidget.dart';
import '../appBar/secondary_app_bar_widget.dart';

class SecondaryPageContainerWidget extends StatelessWidget {
  final Widget child;
  final String appBarTitle;
  final bool hasPadding;
  final bool hasHeaderPadding;
  SecondaryPageContainerWidget(
      {super.key,
      required this.child,
      required this.appBarTitle,
      this.hasPadding = true,
      this.hasHeaderPadding = true});
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    ApplicationView.globalKey = _globalKey;

    return Scaffold(
        endDrawer: SearchingProfileDrawerWidget(),
        drawerEnableOpenDragGesture: true,
        endDrawerEnableOpenDragGesture: true,
        key: _globalKey,
        body: SafeArea(
            child: Container(
                color: Colors.white,
                padding: hasPadding
                    ? const EdgeInsets.all(0.0)
                    : const EdgeInsets.all(0.0),
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 10.0, top: 10.0, bottom: 10.0),
                    child: Column(
                      children: [
                        SecondaryAppBarWidget(
                            dark: true,
                            globalKey: _globalKey,
                            color: Colors.black,
                            title: appBarTitle,
                            onBack: () {
                              Navigator.pop(context);
                            })
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                    color: const Color(0xfff8fafd),
                    child: child,
                  ))
                ]))));
  }
}
