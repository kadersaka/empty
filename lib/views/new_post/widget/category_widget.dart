import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  final String text;
  final bool selected;
  const CategoryWidget({super.key, required this.text, this.selected = false});

  @override
  State<StatefulWidget> createState() {
    return _CategoryWidgetState();
  }
}

class _CategoryWidgetState extends State<CategoryWidget> {
  late bool isSelected;

  @override
  void initState() {
    isSelected = widget.selected;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Chip(
          label: Text(widget.text),
          backgroundColor: isSelected ? Color(0xff5C71A8) : Colors.transparent,
          labelStyle:
              TextStyle(color: isSelected ? Colors.white : Color(0xff5C71A8)),
          shape: RoundedRectangleBorder(
              side: BorderSide(color: Color(0xff5C71A8)),
              borderRadius: BorderRadius.all(Radius.circular(20)))),
    );
  }
}
