import 'package:empty/widget/text/underline_text_button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../home/bloc/home_bloc.dart';

class OfferSentView extends StatefulWidget {
  const OfferSentView({super.key});

  @override
  State<StatefulWidget> createState() {
    return _OfferSentViewState();
  }
}

class _OfferSentViewState extends State<OfferSentView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Offer Sent!",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.asset("assets/images/send_inc.png")],
          ),
          SizedBox(
            height: 50.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.email_outlined,
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
                  Text("Keep a look out for a response",
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                      "(Username) has 48 hours from now to accept, decline or counter your offer. We’ll let you know what they decide. ",
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
                  Text("How to pay?",
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10.0,
                  ),
                  RichText(
                      text: TextSpan(
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                          text: "(User name) will have ",
                          children: [
                        TextSpan(
                            text: "48 hours",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: " to make a payment.")
                      ]))
                ],
              ))
            ],
          ),
          SizedBox(
            height: 80.0,
          ),
          SizedBox(
              width: double.infinity,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff0880A1),
                            shape: RoundedRectangleBorder(
                              // Change your radius here
                              borderRadius: BorderRadius.circular(30),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 70.0, vertical: 15.0),
                            minimumSize: const Size(303, 40)),
                        onPressed: () {
                          BlocProvider.of<HomeBloc>(context).add(
                              NavigateAppToPageEvent(
                                  NavigationPageEnum.messagesRequests));
                        },
                        child: const Text(
                          "Send a Message",
                          style: TextStyle(fontSize: 17),
                        ))
                  ])),
          SizedBox(
            height: 50.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UnderlineTextButton(text: "View all offers in your inbox")
            ],
          )
        ],
      ),
    );
  }
}
