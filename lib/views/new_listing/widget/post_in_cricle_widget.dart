import 'package:flutter/material.dart';

class PostInCircleWidget extends StatelessWidget {
  const PostInCircleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          boxShadow: [
            BoxShadow(
              color: Color(0xffdddddd),
              blurRadius: 6.0, // soften the shadow
              spreadRadius: 2.0, //extend the shadow
              offset: Offset(
                0.0, // Move to right 5  horizontally
                5.0, // Move to bottom 5 Vertically
              ),
            )
          ]),
      child: Row(
        children: [
          Icon(Icons.close),
          SizedBox(
            width: 5.0,
          ),
          Image.asset("assets/images/kaset.png"),
          SizedBox(
            width: 5.0,
          ),
          Text(
            "Music",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
