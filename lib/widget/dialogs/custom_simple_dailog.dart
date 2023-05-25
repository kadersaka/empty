import 'dart:ui';

import 'package:empty/widget/text/underline_text_button_widget.dart';
import 'package:flutter/material.dart';

class CustomSimpleDialog extends StatelessWidget {
  final String text;
  final String? okText;
  final String? cancelText;
  final Function? onOk;
  final Function? onCancel;
  final Color okColor;
  final Color cancelColor;
  const CustomSimpleDialog(
      {super.key,
      required this.text,
      this.okText,
      this.cancelText,
      this.okColor=Colors.red,
      this.cancelColor=Colors.blue,
      this.onOk,
      this.onCancel});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
        child: Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              height: 220,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      text,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18.0),
                    ),
                    const Divider(
                      height: 50,
                      thickness: 1,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        if (onOk != null) {
                          onOk!();
                        }
                      },
                      child: Text(
                        okText ?? 'OK',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: okColor,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    UnderlineTextButton(
                      text: cancelText ?? "Cancel",
                      color: cancelColor,
                      onTap: () {
                        Navigator.pop(context);
                        if (onCancel != null) {
                          onCancel!();
                        }
                      },
                    )
                  ],
                ),
              )),
        ));
  }
}
