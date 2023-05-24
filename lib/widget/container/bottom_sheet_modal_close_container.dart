import 'package:empty/widget/text/underline_text_button_widget.dart';
import 'package:flutter/material.dart';

import '../text/text_header_one_widget.dart';

class BottomSheetModalCloseContainer extends StatelessWidget {
  final Widget child;
  final String title;
  final Widget? header;
  final double percentage;
  final double titleSize;
  final bool hasCancel;
  const BottomSheetModalCloseContainer(
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
          Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    /*BoxShadow(
                      color: Color(0xffDDDDDD),
                      blurRadius: 1.0, // soften the shadow
                      spreadRadius: 2.0, //extend the shadow
                      offset: Offset(
                        0.0, // Move to right 5  horizontally
                        -1.0, // Move to bottom 5 Vertically
                      ),
                    )*/
                  ],
                  border: Border(
                      bottom: BorderSide(
                          width: 2,
                          color: Color.fromARGB(116, 115, 122, 130)))),
              child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.close),
                      ),
                      TextHeaderOneWidget(text: title, fontSize: titleSize),
                      SizedBox(
                        width: 10.0,
                      )
                    ],
                  ))),
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
