import 'package:empty/widget/search/search_input_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widget/container/icon_app_bar_page_container_widget.dart';
import 'widget/inbox_list_item.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IconAppBarPageContainerWidget(
        appBarTitle: "Meryl C.",
        hasPadding: false,
        iconData: CupertinoIcons.square_pencil,
        onAppBarIconTap: () {},
        child: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              SearchInputWidget(),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Messages",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Text("Request",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff737A82)))
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              InboxListItemWidget(
                username: 'NickS',
                descriptionMessageBold: true,
                descriptionMessage: 'Sent a video from Foodies...',
                time: '2h',
                hasNotification: true,
                profile: 'assets/images/smiled_man.jpg',
              ),
              SizedBox(
                height: 10.0,
              ),
              InboxListItemWidget(
                username: 'Jane2023',
                descriptionMessage: 'Sent a video from Foodies...',
                time: '14h',
                profile: 'assets/images/woman_2.jpg',
              ),
              SizedBox(
                height: 10.0,
              ),
              InboxListItemWidget(
                username: 'JD.',
                descriptionMessage: 'Sent a video from Foodies...',
                time: '16h',
                profile: 'assets/images/style_man.jpg',
              ),
              SizedBox(
                height: 10.0,
              ),
              InboxListItemWidget(
                username: 'SK8ER',
                descriptionMessage: 'Sent a video from Foodies...',
                time: '20h',
                profile: 'assets/images/man_white.jpg',
              ),
              SizedBox(
                height: 10.0,
              ),
              InboxListItemWidget(
                username: 'LynG',
                descriptionMessage: 'Sent a video from Foodies...',
                time: '24h',
                profile: 'assets/images/black_girl.jpg',
              ),
              SizedBox(
                height: 10.0,
              )
            ],
          ),
        )));
  }
}
