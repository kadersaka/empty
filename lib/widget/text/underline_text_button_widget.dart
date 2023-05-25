import 'package:flutter/material.dart';

class UnderlineTextButton extends StatelessWidget {
  final String text;
  final Function? onTap;
  final double fontSize;
  final Color color;
  const UnderlineTextButton(
      {super.key, required this.text, this.color=Colors.blue, this.onTap, this.fontSize = 14});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (onTap != null) {
            onTap!();
          }
        },
        child: Text(text,
            style: TextStyle(
                color: Colors.transparent,
                fontWeight: FontWeight.bold,
                shadows: [Shadow(offset: Offset(0, -2), color: color)],
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.solid,
                decorationColor: color,
                decorationThickness: 2)));
  }
}
