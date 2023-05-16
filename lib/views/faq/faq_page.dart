import 'package:flutter/material.dart';

import '../../widget/accordion/custom_accordion_widget.dart';
import '../../widget/container/page_container_widget.dart';

class FaqPage extends StatelessWidget {
  const FaqPage({super.key});

  @override
  Widget build(BuildContext context) {

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
