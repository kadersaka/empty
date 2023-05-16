import 'package:flutter/material.dart';

import '../../views/application_view.dart';
import '../DrawerWidget.dart';
import '../appBar/default_app_bar_widget.dart';
import '../appBar/top_header_menu_bar.widget.dart';

class PageContainerWidget extends StatelessWidget {
  final Widget child;
  final String appBarTitle;
  PageContainerWidget(
      {super.key, required this.child, required this.appBarTitle});
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
                padding: EdgeInsets.all(20.0),
                child: Column(children: [
                  DefaultAppBarWidget(
                    dark: true,
                    globalKey: _globalKey,
                  ),
                  TopHeaderMenuBar(
                      color: Colors.black,
                      title: appBarTitle,
                      onBack: () {
                        Navigator.pop(context);
                      }),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: child,
                  )
                ]))));
  }
}
