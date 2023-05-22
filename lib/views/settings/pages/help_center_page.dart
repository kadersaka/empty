import 'package:empty/widget/search/search_input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/tools/print.tool.dart';
import '../../../widget/container/page_container_widget.dart';
import '../../../widget/text/blue_text_button_widget.dart';
import '../../home/bloc/home_bloc.dart';

class HelpCenterPage extends StatelessWidget {
  const HelpCenterPage({super.key});

  @override
  Widget build(BuildContext rootContext) {
    logToConsole("ON SETTINGS HELP CENTER PAGE");
    logToConsole(BlocProvider.of<HomeBloc>(rootContext));

    return PageContainerWidget(
        appBarTitle: "Help Center",
        hasPadding: false,
        child: Padding(
            padding: EdgeInsets.all(20.0),
            child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Row(
                    children: [
                      Text(
                        "What can we help you with?",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  SearchInputWidget(placeholder: "Search help articles..."),
                  SizedBox(
                    height: 50.0,
                  ),
                  Row(
                    children: [
                      Text(
                        "What’s new?",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  BlueTextButton(
                    text: "About marketplace on YuTU",
                    fontSize: 14.0,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  BlueTextButton(
                    text: "Payment on Stripe",
                    fontSize: 14.0,
                  )
                ]))));
  }
}
