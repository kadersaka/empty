import 'package:empty/widget/text/text_header_one_widget.dart';
import 'package:flutter/material.dart';

import '../../widget/DrawerWidget.dart';
import '../../widget/accordion/custom_accordion_widget.dart';
import '../../widget/appBar/default_app_bar_widget.dart';
import '../../widget/appBar/top_header_menu_bar.widget.dart';
import '../application_view.dart';

class FaqPage extends StatelessWidget {
  FaqPage({super.key});

  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  final List<Map<String, dynamic>> _items = List.generate(
      20,
      (index) => {
            'id': index,
            'title': 'Item $index',
            'description':
                'This is the description of the item $index. There is nothing important here. In fact, it is meaningless.',
          });

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
                      title: "FAQ's",
                      onBack: () {
                        Navigator.pop(context);
                      }),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const Accordion(
                            title: 'What is YuTU',
                            content:
                                "YuTU is a local social video platform where people help people and lift each other up. It's a place to build local communities that are inclusive and progressive",
                          ),
                        ],
                      ),
                    ),
                  )
                ]))));
  }
}
