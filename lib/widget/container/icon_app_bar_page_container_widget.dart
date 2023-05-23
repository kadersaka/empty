import 'package:flutter/material.dart';

import '../appBar/app_bar_with_icon_widget.dart';

class IconAppBarPageContainerWidget extends StatelessWidget {
  final Widget child;
  final String appBarTitle;
  final bool hasPadding;
  final bool hasHeaderPadding;
  final IconData iconData;
  final Function onAppBarIconTap;
  const IconAppBarPageContainerWidget(
      {super.key,
      required this.child,
      required this.appBarTitle,
      this.hasPadding = true,
      this.hasHeaderPadding = true,
      required this.onAppBarIconTap,
      required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                color: Colors.white,
                padding: hasPadding
                    ? const EdgeInsets.all(20.0)
                    : const EdgeInsets.all(0.0),
                child: Column(children: [
                  Padding(
                    padding: hasHeaderPadding
                        ? const EdgeInsets.only(
                            left: 20.0, right: 10.0, top: 10.0, bottom: 10.0)
                        : const EdgeInsets.all(0.0),
                    child: Column(
                      children: [
                        AppBarWithIconWidget(
                            dark: true,
                            color: Colors.black,
                            title: appBarTitle,
                            onBack: () {
                              Navigator.pop(context);
                            },
                            iconData: iconData,
                            onIconTap: onAppBarIconTap),
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
