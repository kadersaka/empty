import 'package:flutter/material.dart';

import '../../../widget/container/page_container_widget.dart';
import '../widget/message_input_widget.dart';

class DiscussionPage extends StatelessWidget {
  const DiscussionPage({super.key});

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
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xff737A82)),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
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
