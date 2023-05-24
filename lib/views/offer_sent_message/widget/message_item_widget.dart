import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Color(0xffC8E2EB), borderRadius: BorderRadius.circular(10.0)),
      child: RichText(
          text: TextSpan(
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
              text:
                  "Hey Amy! I live down the hall from you and would love to book a session with you. when’s  your next availability? 🤣")),
    );
  }
}
