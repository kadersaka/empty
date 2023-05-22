import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TermsOfUserHeaderWidget extends StatelessWidget {
  const TermsOfUserHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.close),
          ),
          Column(
            children: [
              Text(
                "Terms of Use",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Icon(
                    CupertinoIcons.lock,
                    size: 15,
                  ),
                  Text(
                    "help.yutu.com",
                    style: TextStyle(fontSize: 12.0),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
