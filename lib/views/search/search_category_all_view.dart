import 'package:empty/widget/text/text_header_one_widget.dart';
import 'package:flutter/material.dart';

import 'widget/search_result_item_large_widget.dart';

class SearchCategoryAllViewWidget extends StatelessWidget {
  const SearchCategoryAllViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                TextHeaderOneWidget(text: "All Profiles"),
                Text("Related to 'guitar'",
                    style: TextStyle(color: Colors.grey))
              ],
            )
          ],
        ),
        SizedBox(
          height: 30.0,
        ),
        SizedBox(
          height: 460, //TODO use value from the parent object by percentage
          child: SingleChildScrollView(
            child: Column(
              children: [
                SearchResultItemLargeWidget(),
                SearchResultItemLargeWidget(),
                SearchResultItemLargeWidget(),
                SearchResultItemLargeWidget(),
                SearchResultItemLargeWidget(),
                SearchResultItemLargeWidget(),
                SearchResultItemLargeWidget(),
                SearchResultItemLargeWidget(),
                SearchResultItemLargeWidget(),
                SearchResultItemLargeWidget(),
                SearchResultItemLargeWidget(),
                SearchResultItemLargeWidget(),
                SearchResultItemLargeWidget(),
                SearchResultItemLargeWidget(),
                SearchResultItemLargeWidget(),
                SearchResultItemLargeWidget(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
