import 'package:flutter/material.dart';

class TextHeaderOneSubTitleWidget extends StatelessWidget {
  final String text;
  const TextHeaderOneSubTitleWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 14.0, color: Colors.grey),
    );
  }
}
