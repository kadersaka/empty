import 'package:flutter/material.dart';

class TextHeaderTwoWidget extends StatelessWidget {
  final String text;
  const TextHeaderTwoWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
    );
  }
}
