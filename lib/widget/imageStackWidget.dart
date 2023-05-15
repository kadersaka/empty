import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class StackedWidgets extends StatelessWidget {
  final List<Widget> items;
  final TextDirection direction;
  final double size;
  final double xShift;
  final double yShift;
  final bool  isHorizontal;

  const StackedWidgets({
    Key? key,
    required this.items,
    this.direction = TextDirection.ltr,
    this.size = 100,
    this.xShift = 20,
    this.yShift = 20,
     this.isHorizontal = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final allItems = items.asMap().map((index, item) {
      final margin_size = size - xShift;

      final value = Container(
        width: size,
        height: size,
        child: item,
        margin: isHorizontal ? EdgeInsets.only(left: margin_size * index *0.8) : EdgeInsets.only(top: margin_size * index *0.8),
      );

      return MapEntry(index, value);
    })
        .values
        .toList();
    if(isHorizontal){
      return Stack(
        children: direction == TextDirection.ltr
            ? allItems.reversed.toList()
            : allItems,
      );
    }
    else{
      return Stack(
        children: allItems,
      );
    }

  }
}