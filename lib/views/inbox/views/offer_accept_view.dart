import 'package:empty/widget/text/underline_text_button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../home/bloc/home_bloc.dart';

class OfferAcceptView extends StatefulWidget {
  const OfferAcceptView({super.key});

  @override
  State<StatefulWidget> createState() {
    return _OfferAcceptViewState();
  }
}

class _OfferAcceptViewState extends State<OfferAcceptView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/nice_pop.png",
                height: 81,
                width: 81,
              )
            ],
          ),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Offer Accepted!",
                  style: TextStyle(fontSize: 16, color: Color(0xff737A82)))
            ],
          ),
          SizedBox(
            height: 30.0,
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
                      Text("Heads up!",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold)),
                      RichText(
                          text: TextSpan(
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                              text: "(User name) will have ",
                              children: [
                            TextSpan(
                                text: "48 hours",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: " to make a payment.")
                          ])),
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
              Text("What happens next...",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(
            height: 40.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.pause_circle,
                size: 25,
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.0,
                  ),
                  Text("Pending",
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                      "The listing will show that it’s pending until payment is made or time has expired.",
                      style: TextStyle(
                          height: 1.5, fontSize: 14, color: Colors.grey))
                ],
              ))
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                CupertinoIcons.creditcard,
                size: 25,
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.0,
                  ),
                  Text("Payment",
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                      "When payment is made the listing will be removed from active listings.",
                      style: TextStyle(
                          height: 1.5, fontSize: 14, color: Colors.grey))
                ],
              ))
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                CupertinoIcons.arrow_counterclockwise_circle,
                size: 25,
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.0,
                  ),
                  Text("Re-Post",
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                      "Listings can be re-posted after payment is made or after 7 days of it being live.",
                      style: TextStyle(
                          height: 1.5, fontSize: 14, color: Colors.grey))
                ],
              ))
            ],
          ),
          SizedBox(
            height: 50.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [UnderlineTextButton(text: "Send a Mesage")],
          ),
          SizedBox(
            height: 80.0,
          ),
        ],
      ),
    );
  }
}


/*
https://www.figma.com/file/D6R7nXHUIwzqdCXFPwV22A/FINAL-Screens-for-Developers?type=design&node-id=168-23586&t=dOHtCDjSPuXaghSr-4
@override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/nice_pop.png",
                height: 81,
                width: 81,
              )
            ],
          ),
          SizedBox(
            height: 30.0,
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
                      Text("Heads up!",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold)),
                      RichText(
                          text: TextSpan(
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                              text: "(User name) will have ",
                              children: [
                            TextSpan(
                                text: "48 hours",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: " to make a payment.")
                          ])),
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
              Text("What happens next...",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(
            height: 40.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.pause_circle,
                size: 25,
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.0,
                  ),
                  Text("Pending",
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                      "The listing will show that it’s pending until payment is made or time has expired.",
                      style: TextStyle(
                          height: 1.5, fontSize: 14, color: Colors.grey))
                ],
              ))
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                CupertinoIcons.creditcard,
                size: 25,
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.0,
                  ),
                  Text("Payment",
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                      "When payment is made the listing will be removed from active listings.",
                      style: TextStyle(
                          height: 1.5, fontSize: 14, color: Colors.grey))
                ],
              ))
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                CupertinoIcons.arrow_counterclockwise_circle,
                size: 25,
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.0,
                  ),
                  Text("Re-Post",
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                      "Listings can be re-posted after payment is made or after 7 days of it being live.",
                      style: TextStyle(
                          height: 1.5, fontSize: 14, color: Colors.grey))
                ],
              ))
            ],
          ),
          SizedBox(
            height: 50.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [UnderlineTextButton(text: "Send a Mesage")],
          ),
          SizedBox(
            height: 80.0,
          ),
        ],
      ),
    );
  }
 */