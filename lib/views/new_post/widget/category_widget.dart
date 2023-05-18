import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final String text;
  const CategoryWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Chip(
        label: Text(text),
        backgroundColor: Colors.transparent,
        labelStyle: TextStyle(color: Color(0xff5C71A8)),
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Color(0xff5C71A8)),
            borderRadius: BorderRadius.all(Radius.circular(20))));
  }
}
