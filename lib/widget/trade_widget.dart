import 'package:empty/widget/tag_widget.dart';
import 'package:flutter/material.dart';

import '../entities/interest.dart';
import '../entities/subject.dart';
import '../entities/trade.dart';

class TradeTagWidget extends StatelessWidget {
  const TradeTagWidget({Key? key, required this.trade, this.bgColor}) : super(key: key);
  final Trade trade;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return  TagWidget(
      text: trade.name,
      bgColor: bgColor,
    );
  }
}
