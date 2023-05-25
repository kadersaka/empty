import 'dart:ui';

import 'package:empty/widget/text/underline_text_button_widget.dart';
import 'package:flutter/material.dart';

class FeedbackDialog extends StatelessWidget {
  const FeedbackDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
        child: Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          child: Container(
              padding: EdgeInsets.only(top: 50.0, left: 30.0, right: 30.0),
              height: 450,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Thank You!",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Your feedback means a lot!",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Image(
                        image: AssetImage("assets/images/smiley.png"),
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      "Your feedback was successfully submitted.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15, color: Color(0xff737A82)),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    UnderlineTextButton(text: "Back")
                  ],
                ),
              )),
        ));
  }
}
