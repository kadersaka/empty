import 'package:flutter/material.dart';

class TextHeaderOneWidget extends StatelessWidget {
  final String text;
  const TextHeaderOneWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
    );
  }
}
