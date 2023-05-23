import 'package:flutter/material.dart';

import 'widget/top_title_widget.dart';

class AppBarWithIconWidget extends StatelessWidget {
  final bool dark;
  final String title;
  final Function? onBack;
  final IconData iconData;
  final Function onIconTap;
  final Color? color;
  const AppBarWithIconWidget({
    super.key,
    this.dark = false,
    required this.title,
    this.onBack,
    this.color,
    required this.onIconTap,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TopTitleWidget(
            color: color,
            onBack: onBack,
            title: title,
          ),
          Container(
              child: IconButton(
            onPressed: () {
              onIconTap();
            },
            icon: Icon(
              iconData,
              color: Colors.black,
              size: 24,
            ),
          ))
        ]);
  }
}
