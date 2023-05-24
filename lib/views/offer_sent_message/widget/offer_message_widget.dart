import 'package:flutter/material.dart';

import '../../../widget/text/underline_text_button_widget.dart';

class OfferMessageWidget extends StatelessWidget {
  const OfferMessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      width: 199,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
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
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              "assets/images/big_girl_guitar.png",
              height: 286,
              width: 199,
            ),
          ),
          Positioned(
              bottom: 0,
              child: Container(
                width: 286,
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Guitar Lesson - 30 min",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text("£15",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 10.0,
                    ),
                    UnderlineTextButton(text: "Go to Offers")
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
