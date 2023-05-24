import 'package:flutter/material.dart';

class OptionWidget extends StatelessWidget {
  final String text;
  final Function onTap;
  const OptionWidget({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Color(0xffDDDDDD),
              blurRadius: 6.0, // soften the shadow
              spreadRadius: 2.0, //extend the shadow
              offset: Offset(
                0.0, // Move to right 5  horizontally
                5.0, // Move to bottom 5 Vertically
              ),
            )
          ]),
      child: InkWell(
        onTap: () {
          onTap();
        },
        child: Text(text,
            style: TextStyle(
                color: Color(0xff737A82),
                fontSize: 12,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
