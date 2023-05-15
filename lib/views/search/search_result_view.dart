import 'package:flutter/material.dart';

import 'widget/search_result_section_widget.dart';

///Contains the first screen of results grouped by categories
class SearchResultsView extends StatelessWidget {
  const SearchResultsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [SearchResultSectionWidget(), SearchResultSectionWidget()],
    );
  }
}
