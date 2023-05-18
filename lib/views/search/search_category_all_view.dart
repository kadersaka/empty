import 'package:empty/widget/text/text_header_one_widget.dart';
import 'package:flutter/material.dart';

import '../../widget/text/text_header_one_sub_title_widget.dart';
import 'widget/search_result_item_large_widget.dart';

class SearchCategoryAllViewWidget extends StatelessWidget {
  const SearchCategoryAllViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            TextHeaderOneWidget(
              text: "All Profiles",
            ),
          ],
        ),
        Row(
          children: [
            TextHeaderOneSubTitleWidget(
              text: "Related to 'guitar'",
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
