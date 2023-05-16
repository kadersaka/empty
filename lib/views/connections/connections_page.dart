import 'package:empty/core/tools/print.tool.dart';
import 'package:empty/views/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widget/accordion/custom_accordion_widget.dart';
import '../../widget/container/page_container_widget.dart';
import '../../widget/search/search_input_widget.dart';

class ConnectionsPage extends StatelessWidget {
  const ConnectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    logToConsole("ON CONNECTIONS PAGE");
    logToConsole(BlocProvider.of<HomeBloc>(context));

    return PageContainerWidget(
        appBarTitle: "Connections",
        child: const Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            SearchInputWidget(),
          ],
        ));
  }
}
