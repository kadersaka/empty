import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_1.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';

class MessageReceivedWidget extends StatelessWidget {
  const MessageReceivedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ChatBubble(
              clipper: ChatBubbleClipper2(type: BubbleType.receiverBubble),
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 20),
              backGroundColor: Color(0xFFE9EDF5),
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.7,
                ),
                padding: EdgeInsets.all(1.0),
                decoration: BoxDecoration(
                    color: Color(0xFFE9EDF5),
                    borderRadius: BorderRadius.circular(10.0)),
                child: RichText(
                    text: TextSpan(
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                        text:
                            "Hey! Unfortunately I will be declining this offer.")),
              ))
        ]);

    //return ;
  }
}
