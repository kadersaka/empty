import 'package:empty/widget/tag_widget.dart';
import 'package:flutter/material.dart';

import '../entities/interest.dart';
import '../entities/subject.dart';

class InterestWidget extends StatelessWidget {
  const InterestWidget({Key? key, required this.interest, this.bgColor}) : super(key: key);
  final Interest interest;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return  TagWidget(
      text: interest.name,
      bgColor: bgColor,
    );
  }
}
