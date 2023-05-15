import 'package:empty/widget/text/text_header_one_widget.dart';
import 'package:flutter/material.dart';

import 'search_category_all_view.dart';
import 'search_result_view.dart';
import 'widget/search_input_widget.dart';
import 'widget/search_result_section_widget.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(20.0),
                topRight: const Radius.circular(20.0))),
        child: const Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [TextHeaderOneWidget(text: "Search")],
            ),
            SizedBox(
              height: 20.0,
            ),
            SearchInputWidget(),
            SizedBox(
              height: 20.0,
            ),

            //Dynamic COntainer
            //SearchResultsView(),
            SearchCategoryAllViewWidget()
          ],
        ));
  }
}
