import 'package:flutter/material.dart';

class TextHeaderOneWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  const TextHeaderOneWidget(
      {super.key,
      required this.text,
      this.fontSize = 16.0,
      this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: fontSize, color: color),
    );
  }
}
