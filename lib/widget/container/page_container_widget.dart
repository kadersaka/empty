import 'package:flutter/material.dart';

import '../../views/application_view.dart';
import '../DrawerWidget.dart';
import '../appBar/default_app_bar_widget.dart';
import '../appBar/top_header_menu_bar.widget.dart';

class PageContainerWidget extends StatelessWidget {
  final Widget child;
  final String appBarTitle;
  final bool hasPadding;
  final bool hasHeaderPadding;
  PageContainerWidget(
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
                    ? const EdgeInsets.all(20.0)
                    : const EdgeInsets.all(0.0),
                child: Column(children: [
                  Padding(
                    padding: hasHeaderPadding
                        ? const EdgeInsets.all(20.0)
                        : const EdgeInsets.all(0.0),
                    child: Column(
                      children: [
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
                      ],
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                      color: const Color(0xfff8fafd),
                      child: child,
                    ),
                  ))
                ]))));
  }
}
