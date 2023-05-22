import 'package:flutter/material.dart';

class BlueTextButton extends StatelessWidget {
  final String text;
  final Function? onTap;
  final double fontSize;
  const BlueTextButton(
      {super.key, required this.text, this.onTap, this.fontSize = 14});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          if (onTap != null) {
            onTap!();
          }
        },
        child: Text(text, style: TextStyle(color: Colors.blue)));
  }
}
