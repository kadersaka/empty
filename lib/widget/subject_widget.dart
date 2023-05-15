import 'package:empty/widget/tag_widget.dart';
import 'package:flutter/material.dart';

import '../entities/subject.dart';

class SubjectTagWidget extends StatelessWidget {
  const SubjectTagWidget({Key? key, required this.subject, this.bgColor}) : super(key: key);
  final Subject subject;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return  Container(
      // margin: EdgeInsets.only(right: 8, bottom: 8),
      child: TagWidget(
        text: subject.name,
        bgColor: bgColor,
      ),
    );
  }
}
