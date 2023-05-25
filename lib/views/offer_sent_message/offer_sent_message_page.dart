import 'package:flutter/material.dart';

import '../../widget/container/page_container_widget.dart';
import 'widget/information_message_widget.dart';
import 'widget/message_input_widget.dart';
import 'widget/message_item_widget.dart';
import 'widget/message_received_item_widget.dart';
import 'widget/offer_message_widget.dart';
import 'widget/option_widget.dart';

class OfferSentMessagePage extends StatelessWidget {
  const OfferSentMessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageContainerWidget(
        appBarTitle: "Message",
        hasPadding: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
                child: Container(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(37),
                                child: Image.asset(
                                  "assets/images/4.png",
                                  fit: BoxFit.cover,
                                  width: 75,
                                  height: 75,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "Amy Choi",
                                style: TextStyle(fontSize: 14),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Text("Guitar Lesson - 30 min",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text("£15",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                children: [
                                  OptionWidget(
                                    text: "Make Offer",
                                    onTap: () {},
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  OptionWidget(
                                    text: "Make Payment",
                                    onTap: () {},
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 25.0,
                              ),
                              Row(
                                children: [
                                  Text("Today 9:41 AM",
                                      style: TextStyle(
                                          color: Color(0xff737A82),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [OfferMessageWidget()],
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      MessageWidget(),
                      SizedBox(
                        height: 5.0,
                      ),
                      MessageReceivedWidget(),
                      SizedBox(
                        height: 50.0,
                      ),
                      InformationMessageWidget(
                          time: "9:41 AM",
                          texts: ["😥 Your offer has been declined"]),
                    ],
                  ),
                ),
              ),
            )),
            Container(
                padding: EdgeInsets.all(20.0),
                child: MessageInputWidget(
                  placeholder: "Start typing here...",
                ))
          ],
        ));
  }
}
