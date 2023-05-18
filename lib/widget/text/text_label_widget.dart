import 'package:flutter/material.dart';

class TextLabelWidget extends StatelessWidget {
  final String text;
  final bool isRequired;
  const TextLabelWidget(
      {super.key, required this.text, this.isRequired = false});

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
        text: text,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
        children: [
          TextSpan(
              text: isRequired ? " *" : "",
              style: const TextStyle(color: Colors.red))
        ]));
  }
}
