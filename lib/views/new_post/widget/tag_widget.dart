import 'package:flutter/material.dart';

class CustomTagChip extends StatefulWidget {
  final String text;
  final IconData? icon;
  const CustomTagChip({super.key, required this.text, this.icon});

  @override
  State<StatefulWidget> createState() {
    return _CustomChiopState();
  }
}

class _CustomChiopState extends State<CustomTagChip> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
              color: Color(0xffa6b4d7),
              border: Border.all(color: Color(0xffa6b4d7), width: 1.0),
              borderRadius: BorderRadius.circular(20.0)),
          child: Row(
            children: [
              Icon(
                widget.icon,
                size: 20,
                color: Colors.white,
              ),
              SizedBox(
                width: 2,
              ),
              Text(widget.text, style: TextStyle(color: Colors.white))
            ],
          )),
    );
  }
}
