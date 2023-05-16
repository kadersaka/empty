import 'package:empty/widget/text/text_header_one_widget.dart';
import 'package:flutter/material.dart';

import 'search_category_all_view.dart';
import '../../widget/search/search_input_widget.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
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
