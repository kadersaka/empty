import 'package:flutter/material.dart';

import 'widget/top_menu_widget.dart';
import 'widget/top_title_widget.dart';

class SecondaryAppBarWidget extends StatelessWidget {
  final bool dark;
  final String title;
  final Function? onBack;
  final Color? color;
  final GlobalKey<ScaffoldState>? globalKey;
  const SecondaryAppBarWidget({
    super.key,
    this.dark = false,
    required this.globalKey,
    required this.title,
    this.onBack,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      TopTitleWidget(
        color: color,
        onBack: onBack,
        title: title,
      ),
      TopMenuWidget(
        globalKey: globalKey,
        dark: dark,
      )
    ]);
  }
}
