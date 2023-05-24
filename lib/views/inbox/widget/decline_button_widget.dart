import 'package:flutter/material.dart';

class DeclineButtonWidget extends StatelessWidget {
  const DeclineButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.red, width: 3),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
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
        child: Text(
          "Decline",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.red),
        ),
      ),
    );
  }
}
