import 'package:flutter/material.dart';

class TextHeaderOneWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  const TextHeaderOneWidget({super.key, required this.text, this.fontSize=16.0});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
    );
  }
}
