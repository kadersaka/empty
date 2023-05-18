import 'package:empty/views/post_owner_about/widget/profile_widget.dart';
import 'package:flutter/material.dart';

import '../../widget/input/text_area._widget.dart';
import '../../widget/tag/tag_widget.dart';
import '../../widget/text/text_label_widget.dart';
import 'widget/profile_second_widget.dart';

class PostOwnerAboutView extends StatelessWidget {
  const PostOwnerAboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text(
                  "Posted by",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      color: Colors.black),
                ),
              )
            ],
          ),
          ProfileWidget(),
          SizedBox(
            height: 30.0,
          ),
          ProfileSecondWidget(),
          SizedBox(
            height: 30.0,
          ),
          TextAreaWidget(
            readOnly: true,
            placeholder: '',
            value:
                'A student art galley show in downtown Bristol. Come support your schoolmates. Free admission!',
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              TextLabelWidget(text: "Tags"),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: SimpleTagWidget(text: "#art"),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: SimpleTagWidget(text: "#studentwork"),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: SimpleTagWidget(text: "#local"),
              )
            ],
          )
        ]));
  }
}
