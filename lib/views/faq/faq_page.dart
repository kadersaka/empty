import 'package:empty/widget/text/text_header_one_widget.dart';
import 'package:flutter/material.dart';

import '../../widget/DrawerWidget.dart';
import '../../widget/accordion/custom_accordion_widget.dart';
import '../../widget/appBar/default_app_bar_widget.dart';
import '../../widget/appBar/top_header_menu_bar.widget.dart';
import '../../widget/container/page_container_widget.dart';
import '../application_view.dart';

class FaqPage extends StatelessWidget {
  FaqPage({super.key});

  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    ApplicationView.globalKey = _globalKey;

    return PageContainerWidget(
        appBarTitle: "FAQ's",
        child: const Column(
          children: [
            Accordion(
              title: 'What is YuTU',
              content:
                  "YuTU is a local social video platform where people help people and lift each other up. It's a place to build local communities that are inclusive and progressive",
            ),
          ],
        ));
  }
}
