import 'package:empty/widget/text/text_header_one_widget.dart';
import 'package:flutter/material.dart';

import '../../widget/DrawerWidget.dart';
import '../../widget/appBar/default_app_bar_widget.dart';
import '../../widget/appBar/top_header_menu_bar.widget.dart';
import '../application_view.dart';

class FaqPage extends StatelessWidget {
  FaqPage({super.key});

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
                padding: EdgeInsets.all(20.0),
                child: Column(children: [
                  DefaultAppBarWidget(
                    dark: true,
                    globalKey: _globalKey,
                  ),
                  TopHeaderMenuBar(
                      color: Colors.black,
                      title: "FAQ",
                      onBack: () {
                        Navigator.pop(context);
                      }),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: SingleChildScrollView(
                      child: Column(),
                    ),
                  )
                ]))));
  }
}
