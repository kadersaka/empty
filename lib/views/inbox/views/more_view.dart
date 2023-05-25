import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../widget/dialogs/custom_simple_dailog.dart';
import '../../home/bloc/home_bloc.dart';
import '../pages/discussion_page.dart';

class MoreView extends StatelessWidget {
  const MoreView({super.key});

  @override
  Widget build(BuildContext rootContext) {
    return Column(
      children: [
        MoreIemWidget(
          icon: Icons.mail_outline,
          title: "Send a Message",
          onTap: () {
            Navigator.push(
              rootContext,
              MaterialPageRoute(
                  builder: (context) => BlocProvider.value(
                      value: BlocProvider.of<HomeBloc>(rootContext),
                      child: DiscussionPage())),
            );
          },
        ),
        MoreIemWidget(
          icon: Icons.star_border,
          title: "Write a Review",
          onTap: () {},
        ),
        MoreIemWidget(
          icon: CupertinoIcons.trash,
          title: "Delete Message",
          onTap: () {
            Navigator.pop(rootContext);
            showDialog(
              context: rootContext,
              builder: (context) => CustomSimpleDialog(
                
                text: 'Are you sure you want to delete this message?',
                okText: "Yes, Delete",
                cancelText: "Cancel",
                okColor: Color(0xff196BE7),
                cancelColor: Colors.red,
                onOk: () {},
              ),
            );
          },
        ),
        MoreIemWidget(
          icon: Icons.block,
          title: "Block Sender",
          onTap: () {},
        )
      ],
    );
  }
}

class MoreIemWidget extends StatefulWidget {
  final String title;
  final IconData icon;
  final Function onTap;
  const MoreIemWidget(
      {super.key,
      required this.title,
      required this.icon,
      required this.onTap});

  @override
  State<StatefulWidget> createState() {
    return _MoreIemWidgetState();
  }
}

class _MoreIemWidgetState extends State<MoreIemWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          widget.onTap();
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
          child: Row(
            children: [
              Icon(widget.icon),
              SizedBox(
                width: 20.0,
              ),
              Text(
                widget.title,
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2B3042)),
              )
            ],
          ),
        ));
  }
}
