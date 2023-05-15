
import 'package:empty/widget/tag_widget.dart';
import 'package:flutter/material.dart';

import '../entities/trend_model.dart';

class CircleTagWidget extends StatelessWidget {
  const CircleTagWidget({Key? key, required this.trend, this.bgColor}) : super(key: key);
  final TrendModel trend;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return  TagWidget(
      text: trend.name,
      bgColor: bgColor,
    );
  }
}
