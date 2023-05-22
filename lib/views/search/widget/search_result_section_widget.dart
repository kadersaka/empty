import 'package:flutter/material.dart';

import '../../../models/search.model.dart';
import '../../../widget/text/text_header_one_widget.dart';
import 'search_result_item_widget.dart';

class SearchResultSectionWidget extends StatelessWidget {
  final SearchResultSection data;
  const SearchResultSectionWidget({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: [TextHeaderOneWidget(text: data.title)],
          ),
          SizedBox(
            height: 10.0,
          ),
          ...data.items
              .map((e) => SearchResultItemWidget(
                    item: e,
                  ))
              .toList(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "View All",
                style: TextStyle(
                    color: Colors.transparent,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(offset: Offset(0, -2), color: Colors.blue)
                    ],
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.solid,
                    decorationColor: Colors.blue,
                    decorationThickness: 2),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Divider(
            height: 5,
          )
        ],
      ),
    );
  }
}
