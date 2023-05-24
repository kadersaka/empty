import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_1.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChatBubble(
        clipper: ChatBubbleClipper2(type: BubbleType.sendBubble),
        alignment: Alignment.topRight,
        margin: EdgeInsets.only(top: 20),
        backGroundColor: Color(0xffC8E2EB),
        child: Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.7,
          ),
          padding: EdgeInsets.all(1.0),
          decoration: BoxDecoration(
              color: Color(0xffC8E2EB),
              borderRadius: BorderRadius.circular(10.0)),
          child: RichText(
              text: TextSpan(
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                  text:
                      "Hey Amy! I live down the hall from you and would love to book a session with you. when’s  your next availability? 🤣")),
        ));

    //return ;
  }
}
