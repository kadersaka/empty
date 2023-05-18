import 'package:flutter/material.dart';

import '../text/text_header_one_widget.dart';

class BottomSheetModalContainer extends StatelessWidget {
  final Widget child;
  const BottomSheetModalContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    MediaQueryData? deviceInfo = MediaQuery.of(context);
    return Container(
        height: deviceInfo == null ? 800.0 : deviceInfo!.size.height * 0.90,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        child: Column(children: [
          Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [TextHeaderOneWidget(text: "New Post")],
              )),
          Expanded(
              child: Container(
                  color: const Color(0xfff8fafd),
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: child,
                  )))
        ]));
  }
}
