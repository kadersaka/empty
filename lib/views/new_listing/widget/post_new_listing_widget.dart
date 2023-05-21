import 'dart:ui';

import 'package:empty/widget/text/underline_text_button_widget.dart';
import 'package:flutter/material.dart';

class PostNewListingWidget extends StatelessWidget {
  const PostNewListingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
          child: Container(
              height: 550,
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          //TODO use navigation bloc here
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.close,
                          size: 24,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/bonbon-festive-flags-and-hands-with-decorations-1 1.png",
                        height: 100,
                        width: 100,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Nice!",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Card(
                    elevation: 3,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.history,
                            size: 24,
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Heads up",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                              Text(
                                  "If you want to re-post your listing you can do so in 7 days or after your listing has sold.",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey))
                            ],
                          ))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/girl_with_guitar_small.png"),
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Guitar Lesson - 30 min",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey)),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text("£15",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold))
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      UnderlineTextButton(text: "View Listing", onTap: () {})
                    ],
                  )
                ],
              ))),
    );
  }
}
