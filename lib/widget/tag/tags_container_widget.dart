import 'package:empty/widget/tag/tag_widget.dart';
import 'package:flutter/material.dart';

import '../custom_tag_widget.dart';

class TagsContainerWidget extends StatelessWidget {
  final List<String> items;
  final Function onAddTap;
  const TagsContainerWidget(
      {super.key, required this.items, required this.onAddTap});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Row(
        children: [
          ...items
              .map((e) => Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: SimpleTagWidget(text: e),
                  ))
              .toList(),
          GestureDetector(
            onTap: () {
              onAddTap();
            },
            child: CustomTagChip(
              text: "Add",
              icon: Icons.add,
            ),
          )
        ],
      ),
    );
  }
}
