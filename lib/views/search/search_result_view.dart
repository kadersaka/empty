import 'package:empty/core/tools/print.tool.dart';
import 'package:empty/views/search/bloc/search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widget/search_result_section_widget.dart';

///Contains the first screen of results grouped by categories
class SearchResultsView extends StatelessWidget {
  const SearchResultsView({super.key});

  @override
  Widget build(BuildContext context) {
    logToConsole(BlocProvider.of<SearchBloc>(context));
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return Column(
          children: [
            ...state.data
                .map((d) => SearchResultSectionWidget(data: d))
                .toList()
          ],
        );
      },
    );
  }
}
