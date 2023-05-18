import 'dart:ui';

import 'package:empty/widget/text/underline_text_button_widget.dart';
import 'package:flutter/material.dart';

class CustomSimpleDialog extends StatelessWidget {
  final String text;
  final String? okText;
  final String? cancelText;
  final Function? onOk;
  final Function? onCancel;
  const CustomSimpleDialog(
      {super.key,
      required this.text,
      this.okText,
      this.cancelText,
      this.onOk,
      this.onCancel});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
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
                        if (onOk != null) {
                          onOk!();
                        }
                      },
                      child: Text(
                        okText ?? 'OK',
                        style: const TextStyle(
                            fontSize: 18.0,
                            color: Colors.red,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    UnderlineTextButton(
                      text: cancelText ?? "Cancel",
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
