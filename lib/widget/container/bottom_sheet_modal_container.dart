import 'package:empty/widget/text/underline_text_button_widget.dart';
import 'package:flutter/material.dart';

import '../text/text_header_one_widget.dart';

class BottomSheetModalContainer extends StatelessWidget {
  final Widget child;
  final String title;
  final Widget? header;
  final double percentage;
  final double titleSize;
  final bool hasCancel;
  const BottomSheetModalContainer(
      {super.key,
      required this.child,
      required this.title,
      this.header,
      this.percentage = 0.90,
      this.titleSize = 16.0,
      this.hasCancel = false});

  @override
  Widget build(BuildContext context) {
    MediaQueryData? deviceInfo = MediaQuery.of(context);
    return Container(
        height:
            deviceInfo == null ? 800.0 : deviceInfo.size.height * percentage,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        child: Column(children: [
          Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 10.0,
                  ), //Just for spacing
                  Column(
                    children: [
                      Container(
                        width: 45,
                        height: 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff737a82)),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextHeaderOneWidget(text: title, fontSize: titleSize)
                    ],
                  ),
                  UnderlineTextButton(text: hasCancel ? "Back" : "    ", onTap: () {
                    Navigator.pop(context);
                  },)
                ],
              )),
          header != null
              ? Container(
                  color: const Color(0xfff8fafd),
                  width: double.infinity,
                  child: Padding(padding: EdgeInsets.all(20.0), child: header),
                )
              : SizedBox(),
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
