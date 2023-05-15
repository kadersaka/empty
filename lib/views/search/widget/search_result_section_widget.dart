import 'package:flutter/material.dart';

import '../../../widget/text/text_header_one_widget.dart';
import 'search_result_item_widget.dart';

class SearchResultSectionWidget extends StatelessWidget {
  const SearchResultSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 30.0,
          ),
          Row(
            children: [TextHeaderOneWidget(text: "Circles")],
          ),
          SizedBox(
            height: 10.0,
          ),
          SearchResultItemWidget(),
          SearchResultItemWidget(),
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
