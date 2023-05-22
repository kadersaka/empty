import 'package:empty/widget/text/text_header_one_widget.dart';
import 'package:flutter/material.dart';

import 'search_category_all_view.dart';
import '../../widget/search/search_input_widget.dart';
import 'search_result_view.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            SearchInputWidget(),

            //Dynamic COntainer
            SearchResultsView(),
            //SearchCategoryAllViewWidget()
          ],
        ));
  }
}
