import 'package:flutter/material.dart';

class SimpleTagWidget extends StatelessWidget {
  final String text;
  const SimpleTagWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Chip(
        label: Text(text),
        backgroundColor: Color(0xff5C71A8),
        labelStyle: TextStyle(color: Colors.white, fontSize: 16.0),
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Color(0xff5C71A8)),
            borderRadius: BorderRadius.all(Radius.circular(20))));
  }
}
